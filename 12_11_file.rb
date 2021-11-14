require 'csv'
file_path = 'info.csv'
CSV.open(file_path,'w',
    :write_headers=> true,
    :headers => ['Name','Email', 'Phone', 'Address', 'Day_of_Birth', 'Profile']
  ) do |csv|
    for i in (0..2)
        email = "trongnd#{i+1}@gmail.com"
        chars  = '/\'"@#$%^&&*()'
        profile = chars[rand(0..chars.length)] + 'assf' + chars[rand(0..chars.length)] + 'a'
        csv << ['Trong', email, '0123456789', 'HCM','01/01/2000', profile]
    end
end
CSV.open(file_path) do |csv|
    puts csv.shift
end