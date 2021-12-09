
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

    target_sum_arrays[0..-3].each_with_index do |val, index|
        hash_temp = {}
        numbers[index+1..-1].each_with_index do |valI, indexi|

            if hash_temp.key?(val - valI)
                result.push([target_sum-val, val - valI, valI])
            else
                hash_temp[valI] = true 
            end
        end       
    end
    return result
end


numbers = [12, 3, 1, 2, -6, 5, -8, 6, 0, -1]
target_sum = 0

puts "nhung bo 3 so co tong bang #{target_sum}: #{find_arrays_three_numbers(target_sum,numbers)}"
