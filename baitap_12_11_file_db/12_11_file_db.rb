require 'pg'
require 'csv'

CHARS_SPECIAL  = '/\'"@#$%^&&*()'

#ket noi database
conn=PG.connect(:dbname=>'sales')

conn.exec "DROP TABLE IF EXISTS info"
conn.exec "CREATE TABLE info (Id SERIAL PRIMARY KEY, 
        name VARCHAR(20), email VARCHAR(30), phone varchar(10),
        address varchar(30), day_of_birth date, profile text)"


#Tao file csv va them du lieu
file_path = 'info.csv'
CSV.open(file_path,'w',
    :write_headers=> true,
    :headers => ['name','email', 'phone', 'address', 'day_of_Birth', 'profile']
  ) do |csv|

    for i in (0..50000)
        email = "trongnd#{i+1}@gmail.com"
        profile =  "Ho Chi Minh city","2000/01/01", "Like TV 100\", Some special charactor: \\ / '' $ ~ & @ # ( ; \""
        csv << ['Trong', email, '0123456789', 'HCM','01/01/2000', profile]
    end
end

#Doc file va luu xuong csdl
starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
CSV.read('info.csv')
CSV.foreach("info.csv", headers: true) do |row|
    replace = row[5].gsub("'","''")
    conn.exec("INSERT INTO info (name,email,phone,address,day_of_birth,profile)
     VALUES('#{row[0]}','#{row[1]}','#{row[2]}','#{row[3]}','#{row[4]}','#{replace}')")
end
ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
elapsed = ending - starting
puts "Total time to read file and import database : #{elapsed}"

#Total time to read file and import database : 577.5411665500005

# conn.exec_params(
#     'INSERT INTO measurement (city_id, logdate) VALUES ($1, $2)',
#     ['1', '12/02/2020'])
# conn.close

# Phần code e trình bày ok, biết sử dụng foreach là một điểm cộng
# db.exec, phần này a thấy e đang insert từng dòng vào trong db, tức là với 500k lines thì mình insert 500k lần về performance có thể bị ảnh hưởng
# do e hit vào db nhiều quá
# A suggest e là
#   1. sử dụng transaction -> e có thể tìm hiểu nó là gì
#   2. build ra 1 câu sql, nhưng khi nào đủ khoảng 5k lines (do e quyết định), rồi hẵn insert vào db. Như vậy sẽ giảm số lần e tương tác db ah
# Biến CHARS_SPECIAL e khai báo nhưng a chưa thấy e sử dụng
# Em trình bày trong 1 file vẫn ok, nhưng khi vào thực tế: e nên tách file ra để dễ quản lý. Vd: file về kết nối db, file để ghi ra file csv, 
# file để import từ csv vào db -> mục đích là e sẽ dễ dàng quản lý và xử lý khi sau này có issues. Vd: không connect được db, thì e chỉ cần vào
# file quản lý cấu hình thôi, chứ kg cần scan hết trong 1 file tổng lớn
