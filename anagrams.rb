

def first_anagram?(str1, str2)
    str1_perm = str1.chars.permutation.to_a
    j = str1_perm.map{|ele| ele.join("")}
    j.include?(str2)
end

def second_anagram?(str1, str2)
    str1_arr = str1.chars
    str2_arr = str2.chars
    str1_arr.each do |c|
        idx = str2_arr.find_index(c)
        str2_arr.delete_at(idx) if idx
    end
    str2_arr.empty?
end

def third_anagram?(str1, str2)
    str1_sorted = str1.chars.sort
    str2_sorted = str2.chars.sort

    str1_sorted == str2_sorted
end

def fourth_anagram?(str1, str2)
    hash = Hash.new(0)
    str1.chars.each do |c|
        hash[c] += 1
    end

    str2.chars.each do |c|
        return false if !hash.has_key?(c)
        hash[c] -= 1
    end
    hash.values.sum == 0
end


p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true

