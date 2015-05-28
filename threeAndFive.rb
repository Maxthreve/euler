sum = 0  
(0..999).each do |i|
	if i%5 ==0 || i%3== 0
		sum += i
		# puts sum
	end 
end
puts sum 	
# def returns_sum=(100)
