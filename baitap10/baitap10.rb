
# @param [array] numbers
# @param [interger] subtrahend
# @return [array]  has interger numbers
def get_subtract(numbers, subtrahend)
    result = numbers.map do |val|
        subtrahend - val
    end
end

# @param [integer] target_sum
# @param [array] has integer numbers
# @return [array]  has arrays  three integer numbers
def find_arrays_three_numbers(target_sum, numbers)
    result = []
   
    target_sum_arrays = get_subtract(numbers,target_sum)

    target_sum_arrays.each_with_index do |val, index|
        hash_temp = {}
        for i in (index+1)..(numbers.length-1) do

            if hash_temp.key?(val - numbers[i])
                result.push([target_sum-val, val - numbers[i], numbers[i]])
            else
                hash_temp[numbers[i]] = true 
            end
        end       
    end
    return result
end


numbers = [12, 3, 1, 2, -6, 5, -8, 6]
target_sum = 0

puts "nhung bo 3 so co tong bang #{target_sum}: #{find_arrays_three_numbers(target_sum,numbers)}"

