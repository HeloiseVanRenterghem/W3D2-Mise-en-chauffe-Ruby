def is_multiple_of_3_or_5?(n)
    n % 3 == 0 || n % 5 == 0
end

def sum_of_3_or_5_multiples(n)
    if (n.class != Integer || n < 0)
        return "Veuillez n'entrer que des entiers naturels." 
    elsif n == 0
        p 0
    else
        multiples_array = [*0..n-1].select { |i| is_multiple_of_3_or_5? (i) }
        sum = multiples_array.reduce { |accumulated_value, i| accumulated_value + i }
        return sum
    end
end