class StocksController < ApplicationController
  
  def home
    @results = Result.order(profit: :desc)
    @stocks = Result.all
  end

end