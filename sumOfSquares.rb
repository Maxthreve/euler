sumSquare = 0
sum = 0
(1..100).each do |i|
	 sumSquare += i **2
	 sum += i
end 

puts (sum ** 2) - sumSquare