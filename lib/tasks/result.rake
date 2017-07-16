namespace :calculate do
  task result: :environment do
    def max_profit(stock)
      month = ['May-04', 'June-04', 'July-04', 'August-04', 'September-04', 'October-04', 'November-04' ,'December-04' ,'January-05' ,'February-05' ,'March-05' ,'April-05' ,'May-05','June-05','July-05', 'August-05','September-05','October-05','November-05', 'December-05', 'January-06' , 'February-06' , 'March-06' , 'April-06' , 'May-06' ,'June-06' , 'July-06' ,'August-06','September-06' ,'October-06' ,'November-06' ,'December-06' ,'January-07' ,'February-07' ,'March-07' ,'April-07' ,'May-07' ,'June-07' ,'July-07' ,'August-07' ,'September-07' ,'October-07' ,'November-07' ,'December-07' ,'January-08' ,'February-08' ,'March-08' ,'April-08' ,'May-08' ,'June-08' ,'July-08' ,'August-08' ,'September-08' ,'October-08' ,'November-08' ,'December-08' ,'January-09' ,'February-09' ,'March-09' ,'April-09' ,'May-09' ,'June-09' ,'July-09' ,'August-09' ,'September-09' ,'October-09' ,'November-09' ,'December-09' ,'January-10' ,'February-10' ,'March-10' ,'April-10' ,'May-10' ,'June-10' ,'July-10' ,'August-10' ,'September-10' ,'October-10' ,'November-10' ,'December-10' ,'January-11' ,'February-11' ,'March-11' ,'April-11' ,'May-11' ,'June-11' ,'July-11' ,'August-11' ,'September-11' ,'October-11' ,'November-11' ,'December-11' ,'January-12' ,'February-12' ,'March-12' ,'April-12' ,'May-12' ,'June-12' ,'July-12' ,'August-12' ,'September-12' ,'October-12' ,'November-12' ,'December-12' ,'January-13' ,'February-13' ,'March-13' ,'April-13' ,'May-13' ,'June-13' ,'July-13' ,'August-13' ,'September-13' ,'October-13' ,'November-13' ,'December-13' ,'January-14' ,'February-14' ,'March-14' ,'April-14' ,'May-14' ,'June-14' ,'July-14' ,'August-14' ,'September-14' ,'October-14' ,'November-14' ,'December-14']

      arr = stock.array_of_prices_over_the_duration
      i = 1, buy = 1, sell = 1, min = 1, profit = 0
      per = 0
      for i in (2..arr.size-1)
        if (arr[i] < arr[min])
          min = i
        elsif (arr[i] - arr[min] > profit)
          buy = min
          sell = i
          profit = arr[i] - arr[min]
          per = (profit / arr[min]) * 100
        end
      end
      information = Result.new()
      information[:min] = month[buy]
      information[:max] = month[sell]
      information[:profit] = per
      information[:name] = stock.security_name
      information[:symbol] = stock.security_symbol
      information.save
    end

    stocks = Stock.all
    stocks.each do |stock|
      max_profit(stock)
    end
  end
end


