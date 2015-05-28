# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.




def factors(i)
	j = Math.sqrt(i).to_i
	 fact = false
	 while  j > 100 && !(fact)  
		if i % j == 0 && i / j >= 100 && i / j < 1000
			fact = true 			
			puts j 
			puts i/j		
		end
		j = j - 1	
	end
	return fact
end
i = 1000000
while true
	if i == i.to_s.reverse.to_i 
		if factors(i) == true
			puts "Largest: #{i}"
			break
		end 
	end 

	i -= 1
	if i < 0
		break
	end 
end 



