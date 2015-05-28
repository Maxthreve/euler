ary = [24,25,26,15,24,25,10,21,18,19,22,9,11]

def getmax(array)
	count = 0
	valley = {}
	peak = {}
	len = array.length

	array.each do |i|
		
		if count == 0 
			#then i is the starting price
			if array[count + 1] > i
				#then i is a valley
				valley[count] = i
			end
			
			if array[count + 1] < i
				peak[count] = i
			end
		end
		
		if count > 0 and count + 1 < len
			if array[count + 1] > i and array[count - 1] > i 
				#then i is a valley
				valley[count] = i
			end
			
			if array[count + 1] < i and array[count - 1] < i
				#then i is a peak
				peak[count] = i
			end
		end
		
		if (count + 1)== len
			#then i is the ending price
			if array[count - 1] > i
				#then i is a valley
				valley[count] = i
			end
			
			if array[count - 1] < i
				peak[count] = i
			end		
		end
	count = count + 1 
	end
	
	puts peak
	puts valley
	max = 0 
	valley.each do |i, low|
		peak.each do |j, high|
			if i < j && (high - low) > max
				max = (high - low)
			end 
		end
	end 
	puts "max = #{max}"

end

getmax(ary)
