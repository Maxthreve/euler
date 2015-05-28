# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

init = 600851475143 
num = Math.sqrt(init) 
i = 5 
# get list of primes less than num
primes = []
primes << 2 
primes << 3 

while i < num do
	isprime = true
	primes.each do  |j|  
		if i % j == 0
			isprime = false 
		end  	
	end
	if isprime && init % i == 0
		primes << i
		puts i
	end
	i += 2
end 
