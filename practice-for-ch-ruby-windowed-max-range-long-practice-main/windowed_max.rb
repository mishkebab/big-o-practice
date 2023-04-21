def windowed_max_range(array, window_size)
    current_max_range = 0

    array.each_with_index do |ele, idx|
        if array[idx + window_size - 1]
            window = array[idx..idx + window_size - 1]
            diff = window.max - window.min
            if diff > current_max_range
                current_max_range = diff
            end
        end
    end

    current_max_range
end


p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8