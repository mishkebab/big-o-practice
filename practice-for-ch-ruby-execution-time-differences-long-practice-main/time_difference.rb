require "byebug"

# def my_min(arr)
#     switch = false

#     until switch
#         switch = true 
#         (0...arr.length - 1).each do |i|
#             (0...arr.length - 1).each do |j|
#                 if j > i && arr[j] < arr[i]  
#                     arr[i], arr[j] = arr[j], arr[i]
#                     switch = false 
#                 end
#             end
#         end
#     end 

#     return arr.first
# end 


# def my_min_phase2(arr)
#     min = arr.first
#     arr.each do |num|
#         if min > num 
#             min = num 
#         end
#     end
#     min
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# p my_min_phase2(list)  # =>  -5

def largest_contiguous_subsum(arr)   #phase 1  this is n^3
    poss_sub_sum = []

    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            if j >= i 
                poss_sub_sum << arr[i..j]
            end
        end
    end

    max = poss_sub_sum.first.sum
    poss_sub_sum.each do |subsum|
        if subsum.sum > max
            max = subsum.sum
        end
    end
    max
end

def largest_contiguous_subsum(arr)  #phase 2   [2, 3, -6, 7, -6, 7]

    current_sum = arr.first
    longest_sum = arr.first

    if arr.all? {|ele| ele < 0}
        return arr.max
    end

    (1...arr.length).each do |i|    
        current_sum = current_sum + arr[i]
        if current_sum > longest_sum
            longest_sum = current_sum
        elsif  current_sum < 0
            current_sum = 0
        end

    end
    longest_sum
end




list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8


list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])


list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])


