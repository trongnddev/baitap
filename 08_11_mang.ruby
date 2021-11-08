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

    x = x.to_i

    if x == -1 
    
        if array.length == 0
            print "Mang rong\n"
    
        else  
            puts "Do dai mang la: #{array.length}."
            puts "Cac phan tu trong mang da nhap la: #{array}"
            puts ("Phan tu nho nhat la: #{array.min}")
        end

        break
    end

    array.push(x)

    if array.length == 99
       
        print "Mang da du 99 phan tu!!\n}"
        puts "Cac phan tu trong mang da nhap la: #{array}"
        puts ("Phan tu nho nhat la: #{array.min}")
        break
    end

    i += 1
    
end