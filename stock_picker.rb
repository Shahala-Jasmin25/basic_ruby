#Implement a method stock_picker that takes in an array of stock prices, 
#one for each hypothetical day. It should return a pair of days representing 
#the best day to buy and the best day to sell. Days start at 0.

def stock_picker(arr)
    days = Array.new(2,0)
    profit = 0
    min_index = 0
    cost = arr.first

    arr.each_with_index do |price, index|
        if  price < cost
            cost = price
            min_index = index
            next
        end
        if (price - cost) > profit
            days = [min_index, index] 
            profit = price - cost
        end
    end
    days
end


stock_picker([17,3,6,9,15,8,6,1,10])