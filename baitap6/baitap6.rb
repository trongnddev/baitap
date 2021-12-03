# @param [integer] target_sum
# @param [array] has integer numbers
# @return [array]  has two integer
def find_two_numbers(target_sum, numbers)
    
    result = []
    hash_temp = Hash.new

    #Sau moi lan lap kiem tra trong hash co key nao bang val khong,
    #neu co thi thi do la cap key value can tim,
    #neu khong thi them phan tu co key la target_num - val, value la val.
    numbers.each do |val|
        if hash_temp.key?(val)
            result.push(target_sum - val, val)
            break
        else
            hash_temp[target_sum - val] = val
        end
    end
    
    return result
end

numbers = [3, 5, -4, 8, 11, -2, 6]
target_sum = 10

puts "mang chua hai so co tong bang #{target_sum}: #{find_two_numbers(target_sum,numbers)}"

# Code e viết tốt, có comment rõ ràng, dễ đọc và solution đúng ý a đang mong chờ
