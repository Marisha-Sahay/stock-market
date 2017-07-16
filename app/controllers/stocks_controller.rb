class StocksController < ApplicationController
  
  def home
    @results = Result.order(profit: :desc)
  end

end