module PriceHelper
    
    def find_price 
        @big_total = 0 
        @formfuctions_user.each do |form|
        @price = Function.find(form.function_id).price
        @big_total = @big_total + @price
        end
        return @big_total
    end

  end