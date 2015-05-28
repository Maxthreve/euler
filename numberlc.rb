# If the numbers 1 to 5 are written out in words: one, two, three, four, five, 
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, 
# how many letters would be used?
# NOTE: Do not count spaces or hyphens. 
# For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) 
# contains 20 letters. 
# The use of "and" when writing out numbers is in compliance with British usage.

numbers =  ",one,two,three,four,five,six,seven,eight,nine".split(",")
teens = "ten,eleven,twelve,thirteen,fourteen,fifteen,sixteen,seventeen,eighteen,nineteen".split(",")
tys = ",,twenty,thirty,forty,fifty,sixty,seventy,eighty,ninety".split(",")
hundred = "hundredand"
thousand = "onethousand"
count = 0
for j in 0..9
	
	for i in 0..99
		# account for the teens
		if((i/10)%10 == 1)
			temp = teens[i%10]
		else 
			temp = numbers[i%10]
		end	   
		# only add hundreds when > 100
		if j  != 0
			 count = count + (numbers[j%10] +""+hundred+""+ tys[(i/10)%10] + "" + temp).size  
		else 
			 count = count + (tys[(i/10)%10] + "" + temp).size
		end
	end		
end

count = count + thousand.size
# get rid of the 9 extra ands from the hundred|and 	 	
puts count - "and".size * 9