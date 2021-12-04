
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

# Code e viết ngắn gọn, trình bày rõ ràng, có comment dễ đọc, có early return. Comment khi e vào dự án thực tế thì nên viết bằng tiếng anh nhé e.
# Line 10, với những đk if phức tạp, e có thể xem xét để tách hàm và tên hàm mang ý nghĩa của nội dụng comment ở trên, lúc này e kg cần
# comment line 9 cũng được ah, sau này khi nhìn vào tên hàm e sẽ biết được hàm để l
# Line 15 e viết chữ lengt sai nhé
# array và check_array đều là mảng chứ nhiều phần tử -> nên là số nhiều nhé e
# Format commit git của e a thấy chưa đúng lắm
