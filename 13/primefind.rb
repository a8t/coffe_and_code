def find_primes(max_bound)
    
    range = (3..max_bound).to_a

    found_primes = [2]
        
    range.each do |each_num|
        found_primes << each_num if found_primes_search(found_primes,each_num)
    end

    found_primes
end

def found_primes_search(found_primes_array, each_num)

    found_primes_array.each do |each_found_prime|
        return false if each_num % each_found_prime == 0
    end
    
    true
end

puts find_primes(20000)