require "csv"

namespace :import do
  task data: :environment do
    CSV.foreach("lib/assets/data.csv", :headers => true) do |row|
      row_hash = row.to_hash
      information = Stock.new(security_name: row_hash["security_name"], security_symbol: row_hash["security_symbol"], array_of_prices_over_the_duration: row_hash["array_of_prices_over_the_duration"])
      information.save
    end
  end
end