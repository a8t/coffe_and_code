def find_primes(max_bound)
    
    range = (2..max_bound).to_a

    range.select do |each_num|
        is_prime?(each_num)
    end

end

def is_prime?(num)
    
    i = 2
    while i ** 2 <= num
        if num % i == 0
            return false
        end
        i += 1
    end

    return true
end

puts find_primes(200000)