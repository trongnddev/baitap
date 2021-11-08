array = []
i = 0
loop do
    puts "Nhap vao phan tu thu #{i + 1}\n"
    x = gets
    #kiem tra nhap so
    if !x.match?(/[[:digit:]]/)
        printf "ban phai nhap so!!\n"
        next
    end
    #Chuyen x ve kieu int
    x = x.to_i

    #Neu nhap -1 in mang va thoat
    if x == -1 
        
        #neu mang chua co phan tu thi in la mang rong
        if array.length == 0
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
    if array.length == 99
       
        print "Mang da du 99 phan tu!!\n}"
        puts "Cac phan tu trong mang da nhap la: #{array}"
        puts ("Phan tu nho nhat la: #{array.min}")
        break
    end

    i += 1
    
end