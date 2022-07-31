def day_trader(array)
    my_hash = Hash.new(0)
    days = []
    marg_array = []
    array[0..array.length].each do |a|
        array[1..array.length].each do |b|
            marg = 0
            if array.index(a) < array.index(b) && b - a > marg
                x = b - a
                marg_array.push(x)
                days.push([a,b])
            else
                nil
            end
        end
    end
    my_hash = days.zip(marg_array).to_h
    profit = my_hash.values.max
    days_buying_selling = my_hash.key(profit)
    day_buying = array.index(days_buying_selling[0]) + 1
    day_selling = array.index(days_buying_selling[1]) + 1
    print "Le meilleur jour pour acheter est le jour #{day_buying} lorsque le prix est de #{days_buying_selling[0]}.\n"
    print "Le meilleur jour pour vendre est le jour #{day_selling} lorsque le prix est de #{days_buying_selling[1]}.\n"
    print "Le profit sera de #{profit}."
end

day_trader([290, 4, 33, 52, 221])