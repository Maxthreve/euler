# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13
# , we can see that the 6th prime is 13.
# What is the 10 001st prime number?


	primes = []
primes << 2
primes << 3  
start = 5
while primes.length < 10001 do 
	
	prime = true

	primes.each do |i| 
		if start % i == 0 
			prime = false
			break
		end	
	end
		if prime ==	true
			primes << start 
		end 
		
	start = start + 2 

end 
puts primes[10000]