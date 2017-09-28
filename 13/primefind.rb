def find_primes(max_bound)
    
    range = (3..max_bound).to_a

    found_primes = [2]
        
    range.each do |each_num|
        found_primes << each_num unless found_primes.any? do |each_found_prime|
            each_num % each_found_prime == 0
        end
    end

    found_primes
end

start = Time.now
find_primes(20000)
finish = Time.now

puts finish - start