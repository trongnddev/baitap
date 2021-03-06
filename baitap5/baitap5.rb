#Nhap so tu 0-99
while true do
    begin
        puts "nhap vao mot so tu 1-99"
        num = gets
        num = Integer(num)
        if num >= 0 && num <=99
            break
        else
            puts "So ban nhap khong hop le, nhap lai"
        end
        
    rescue
        puts "So ban nhap khong hop le, nhap lai"
    end
end

#truong hop nhap 0
if num == 0
    puts "Vi ban nhap 0 nen mang khong co phan tu"

#Truong hop nhap tu 1-99
else
    puts "so ban vua nhap la #{num}" 

    #sinh ngau nhien cac phan tu cho mang
    array = Array.new(num) { |i| i = rand(1..9)}
    puts "mang #{num} phan tu co gia tri random la:\n #{array}"

    #Tao mot mang thu hai
    #Moi phan tu trong mang nay la mot mang khac
    #Gan gia tri array[0] cho phan tu arrays_result[0][0]
    arrays_result = [[array[0],],]

    #khoi tao bien dem 
    count = 0

    for i in 1..num - 1

        #Neu phan tu  >= phan tu truoc thi them phan tu vao mang hien tai
       if array[i] >= array[i - 1]
            arrays_result[count].push(array[i])
        
        #Nguoc lai thi tao mang moi va them phan tu do vao mang moi nay
       else
        count += 1
        arrays_result[count] = []
        arrays_result[count].push(array[i])
       end
    end

    #xuat ra man hinh
    puts "so mang trong mang nay la: #{arrays_result.length}"
    arrays_result.each_with_index do |val, index|
        print "mang tang #{index + 1}: "
        val.each {|value| print "#{value} " }
        print "\n"
    end  

end

# Code e viết có nhiều comment dễ đọc, trình bày dễ hiểu
# A có vài góp ý nhỏ về phần trình bày 
# 1. Em có thể tách ra thành những hàm nhỏ để mình xử lý. Vd: hàm xử lý input user nhập vào, hàm xử lý logic,...
# 2. Những con số, vd: 99 e có thể xem xét đặt là hằng số, để nếu có thay đổi, e chỉ cần thay đổi 1 chổ
# 3. num == 0 e có thể viết num.zero?
# 4. Mặc dù ghi comment là tốt, nhưng e nên ghi những comment với logic mà mình thấy hơi phức tạp or dễ bị confuse.
# Vd: count == 0, e kg nên ghi comment là khởi tạo biến đếm.
# #Neu phan tu  >= phan tu truoc thi them phan tu vao mang hien tai -> comment này nên ghi

