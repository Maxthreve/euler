# 2520 is the smallest number that can be divided by each of the 
# numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible 
# by all of the numbers from 1 to 20?

# notes 
# all numbers are made up of primes so only divide by the prime numbers
# to find the smallest common multiple get te5 prime factors for a given number
# ex to find the  smallest multiple for 1-5 
# first look at 1*2*3*4*5
# grab the prime factors 
# (2*3*2*2*5) = 120
# get rid of exrta factors
# (3*2*2*5) = 60

def getprimes(i)
	
	primeSet = Hash.new
	j =2 
	# puts i
	
	if i == 2 
		primeSet.store(2,1)  
		return primeSet 
	end
	count = 0
	while j <= i 
		if i % j == 0
			if primeSet.has_key?(j.to_s) == true 
				primeSet.store( j , 1 ) 
			else 
				primeSet[j] = primeSet[j].to_i + 1  
			end	
			i  = i/j
			j -= 1
		end 
		j += 1 
	end 
	 
	return primeSet

end

primes = Hash.new 
(2..20).each do |i|
	 # temp = Hash.new
	  temp = getprimes(i)
	  temp.each do |key, value|
	  	if primes.has_key?(key) == false
	  		primes.store(key, value)
	  	end
	  	if primes.has_key?(key) == true && primes[key].to_i < value.to_i
	  		primes[key] =  value
	  	end  	  	

	  end


end
total = 1
primes.each do |k, i |
	total *= (k.to_i)**(i.to_i)
end 
puts total

