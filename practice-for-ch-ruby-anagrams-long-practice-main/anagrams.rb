# def first_anagram?(string1, string2)
#     string1_arr = string1.split("") # O(n)
#     all_anagrams = string1_arr.permutation(string1.length).to_a #O(n!)
#     all_anagrams.include?(string2.split("")) #O(n)
# end 

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

# def second_anagram?(string1, string2)
#     second_arr = string2.split("")   #O(n)

#     string1.each_char do |char|     #O(n)
#         idx = second_arr.find_index(char)  #O(n) --> most likely? 
#         if idx
#             second_arr.delete(char)   #O(n)
#         else
#             return false
#         end
#     end

#     if second_arr.empty? #O(n)
#         return true
#     else
#         return false
#     end
# end


# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

# def third_anagram?(string1, string2)
#     str_1 = string1.chars.sort #ruby uses quicksort as sorting mechanism --> n log n or n^2 WC scenario but most likely n log n 
#     str_2 = string2.chars.sort
#     str_1 == str_2 #O(n)
# end 

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

# def fourth_anagram?(string1, string2)
#     str_1 = Hash.new(0) #O(1) {}
#     str_2 = Hash.new(0) #O(1) {} 

#     string1.each_char do |char| #O(n)
#         str_1[char] += 1 #O(1) 
#     end 

#     string2.each_char do |char| #O(n)
#         str_2[char] += 1 #O(1)
#     end 

#     str_1 == str_2 #O(1)
# end 

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true

def fifth_anagram?(string1, string2)
    str_1 = Hash.new(0) #O(1) {}

    string1.each_char do |char| #O(n)
        str_1[char] += 1 #O(1) 
    end 

    string2.each_char do |char| #O(n)
        str_1[char] -= 1 #O(1)
    end 

    str_1.values.all? {|val| val == 0}

end 

p fifth_anagram?("gizmo", "sally")    #=> false
p fifth_anagram?("elvis", "lives")    #=> true
