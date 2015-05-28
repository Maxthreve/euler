# def get_products(array)
	# len = array.length 
	# newArray = []
	# (0...len).each do |i|
		# newArray[i] = 1
		# (0...len).each do |j| 
			# if i != j
				# puts "j = #{array[j]}"
				# newArray[i] = newArray[i] * array[j]
			# end
		# end
	# end
    # puts newArray
# end
# get_products([1,7,3,4])

def get_products(array)
	len = array.length 
	newArray = []
	(0...len).each do |i|
		newArray[i] = array[1..len].inject(1, :*)
		array.rotate!
	end 
	puts newArray
end
get_products([1,7,3,4,0])