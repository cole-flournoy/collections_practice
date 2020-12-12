def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array = array.sort
    array.reverse
end

def sort_array_char_count(array)
    array.sort do |a, b|
        a.length <=> b.length
    end
end

def swap_elements(array)
    second = array[1]
    array.slice!(1)
    array.insert(2, second)
end

def swap_elements_from_to(array, index, destination_index)
    stored_value = array[index]
    array.slice!(index)
    array.insert(destination_index, stored_value) 
end

swap_elements_from_to([1, 2, 3, 4, 5, 6, 7], 0, 6)

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    array.each do |word|
        word.slice!(2)
        word.insert(2, "$")
    end
end

kesha_maker(["banana", "fruit", "star", "abomination"])

def find_a(array)
    array.select {|word| word[0] == "a"}
end

def sum_array(array)
    array.inject {|sum, number| sum + number}
end

sum_array([2,5,6,7,3,4])

def add_s(array)
    array.each do |word|
        if word == array[1]
            word.next
        else
            word.insert(-1, "s")
        end
    end 
end

add_s(["pig", "sheep", "banana", "hippo"])