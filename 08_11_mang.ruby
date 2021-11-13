array = [] # với những tên biến chứa nhiều phần tử thì nên là số nhiều
i = 0
loop do
    puts "Nhap vao phan tu thu #{i + 1}\n"
    x = gets # biến x nên đặt có ý nghĩa hơn để khi người khác đọc vào kg thắc mắc biến x là gì, trừ trường hợp trong vòng lặp for
    #kiem tra nhap so
    if !x.match?(/[[:digit:]]/)
        printf "ban phai nhap so!!\n"
        next
    end
    #Chuyen x ve kieu int
    x = x.to_i

    #Neu nhap -1 in mang va thoat
    if x == -1 # -1 của e có thể xem xét đặt là hằng số nhé e, để khi đọc vào sẽ dễ hiểu. vd: STOP_SIGNAL = -1
        
        #neu mang chua co phan tu thi in la mang rong
        if array.length == 0 # Thay vì e ghi == 0 e có thể dùng .zero?
            print "Mang rong\n"
        
        #nguoc lai thi in mang
        else  
            puts "Do dai mang la: #{array.length}."
            puts "Cac phan tu trong mang da nhap la: #{array}"
            puts ("Phan tu nho nhat la: #{array.min}")
        end

        break
    end
    #them x vao cuoi mang
    array.push(x)

    #Neu do dai mang bang 99 thi in mang va thoat 
    if array.length == 99 # 99 e cũng có thể xem xet đặt hằng số. vd MAX_LENGTH = 99
       
        print "Mang da du 99 phan tu!!\n}"
        puts "Cac phan tu trong mang da nhap la: #{array}"
        puts ("Phan tu nho nhat la: #{array.min}")
        break
    end

    i += 1
    
end
# Chương trình của e rõ ràng, có comment dễ hiểu (là một điểm cộng)
# Tuy nhiên vẫn có bug khi user nhập không đúng 
# Vd 
# Nhap vao phan tu thu 1
# 9 abcabc
# Nhap vao phan tu thu 2
# 5 + 3      
# Nhap vao phan tu thu 3
# -1
# Do dai mang la: 2.
# Cac phan tu trong mang da nhap la: [9, 5]
# Phan tu nho nhat la: 5
