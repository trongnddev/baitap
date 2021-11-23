numbers = [3, 5, -4, 8, 11, -2, 6]
target_sum = 10
hash_temp = Hash.new
result = []

#Sau moi lan lap kiem tra trong hash co key nao bang val khong
#neu co thi thi do la cap key value can tim
#neu khong thi them phan tu co key la val con value la target_num -val
numbers.each do |val|
    
    if hash_temp.key?(val)
        result.push(target_sum - val, val)
        break
    else
        hash_temp[target_sum - val] = val
    end
end

puts "mang chua hai so co tong bang #{target_sum}: #{result}"
