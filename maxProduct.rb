#fist lets solve it the brute force way
#
# def maxproduct(array)
	# if array.length == 3
		# puts array.inject(1, :*)
	# else
		# prod = 1
		# max = array[0]
		# (0...3).each do |i|
			# (i...array.length).each do |j|
				# if array[j] > array[i]
					# temp = array[i]
					# array[i] = array[j]
					# array[j] = temp
				# end
			# end 
			# prod = prod * array[i]
		# end
		# puts prod
	 # end
 # end 

# how can we clean this up
# if we impliment a heap this becomes much less complex
# although a heap would take up more space
# the insert and return times would be O(n)

# def maxProduct(array)
	# output = []
	# (0...array.length-3).each do |i|
		# output << array[0...3].inject(1,:*)
		# array.rotate!
	# end
	# puts output
# end 





maxProduct([3,5,1,2,9,8,5,7,-10,-11])
