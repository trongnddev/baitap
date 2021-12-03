
# @param [array] has integer numbers
# @param [check_array] has integer numbers
# @return [bool]  true if check_array is sub array of array
def is_sub_array? array, check_array
    count = 0
    array.each_with_index do |val, index|
        
        #tra ve false neu so luong phan tu con lai cua array nho hon cuar check_array
        return false if array.length() -index < check_array.length() - count -1

        #neu val == check_array[count] thi tang count de tiep tuc so sanh o lan lap tiep theo
        count += 1 if val == check_array[count]

        return true if count == check_array.lengt
    end
    false
end
a1 = [5, 1, 22, 26, 6, -1, 8, 10]
b1 = [1, 6, -1, 10]
puts is_sub_array?(a1, b1)
