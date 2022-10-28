
def windowed_max_range(arr, window_size)
    current_max_range = nil
    (0..arr.length - window_size).each do |i|
        min_w = arr[i...i+window_size].min
        max_w = arr[i...i+window_size].max
        current_max_range = max_w - min_w if current_max_range.nil? || max_w - min_w > current_max_range
    end
    current_max_range
end









# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8