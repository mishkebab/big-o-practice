# def two_sum?(arr, target_sum)
#     # your code here...
# end

# arr = [0, 1, 5, 7]
# two_sum?(arr, 6) # => should be true
# two_sum?(arr, 10) # => should be false


def bad_two_sum?(arr, target_sum)  # O(n^2) since nested loops

    (0...arr.length).each do |i| #O(n)
        (0...arr.length).each do |j| #O(n)
            if j > i && (arr[i] + arr[j] == target_sum) #O(1)
                return true
            end
        end
    end
    false
end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false



def okay_two_sum?(arr, target_sum)  #O(nlogn)
    sorted_arr = arr.sort  #O(nlogn)

    sorted_arr.each_with_index do |ele, idx|  #O(n)
        stack = bsearch(new_arr,target_sum - ele) #O(logn)
            if stack != idx && stack != nil  
                return true
            end
    end
    false
end

def bsearch(nums, target, start = 0, finish = nums.length)   #O(logn)
    return nil if start == finish

    mid = (finish - start) / 2 + start
    case target <=> nums[mid]
    when -1
        bsearch(nums,target,start,mid)
    when 0
        mid
    when 1
        bsearch(nums,target,mid + 1,finish)
    end
end


# arr = [1,5,7,3]  #[1,3,5,7]
# p okay_two_sum?(arr, 10) # => should be true
# p okay_two_sum?(arr, 14) # => should be false

def two_sum?(arr, target_sum)
    hash = Hash.new(0) #O(1)

    arr.each do |ele| #O(n)
        hash[ele] += 1
    end
    
    hash.each do |k, v| #O(n)
        if hash.has_key?(target_sum - k) #O(1)
            return true 
        end
    end

    false 
end 

arr = [1,5,7,3]  #[1,3,5,7]
p two_sum?(arr, 10) # => should be true
p two_sum?(arr, 20000) # => should be false
