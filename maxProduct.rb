#fist lets solve it the brute force way
#
def maxProduct(array)
  # new plan of attack
  # two arrays positive and negative
  # if negative array greater than two we use it
  # else just use the positive array
  len = array.length
  pos = []
  neg = []
  negCount = 0
    (0...len).each do |i|
      (i...len).each do |j|
        if (array[j]*array[j]) > (array[i]*array[i])
          temp = array[i]
          array[i] = array[j]
          array[j] = temp
        end
      end
      if array[i] > 0
        pos <<  array[i]
      else
        neg << array[i]
        #keep track of negative numbers in the top three
        if i < 3
          negCount = negCount +1
        end
      end
    end
    (0...len).each do |i|

    end

    # all negative we want the last three numbers of negative
    # all posative we want fist numbers of the positve
    # P P P
    # N N P
    # P N N
    # N P N
    # if one negative just use positive
    # only care if two negatives are greater than positive
    # only two positive want samllest negative

    if pos.length == len
       puts "1 #{array[0..3].inject(1, :*)}"
    elsif neg.length == len
       puts "2 #{array[len-3...len].inject(1, :*)}"
    else
      if negCount >= 2
          puts "3 #{neg[0...2].inject(1, :*) * pos[0]}"
      elsif pos.length - negCount > 2
        puts "4 #{pos[0...3].inject(1, :*)}"
      else #when only two positive we want to multiply by the smallest negative
        puts "5 #{pos[0...2].inject(1, :*) * neg[neg.length-1]}"
      end
    end
end

maxProduct([3,5,1,2,-9,-8,5,7,-10,-11,-12]) #924
maxProduct([-1,-2,-3,-4,-5,-6,-7,-8,-9,-10]) #-6
maxProduct([0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10]) # 0
maxProduct([4,-5, -1, 2 ]) # -8
