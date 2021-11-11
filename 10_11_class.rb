class Emoloyee

    attr_accessor :fist_name, :last_name, :born_year, :title_job,:salary_per_day, :days_work

    def initialize(f_name, l_name, salary_per_day = 1000, days_work=0)
        @first_name = f_name
        @last_name = l_name
        @salary_per_day = salary_per_day
        @days_work  = days_work
    end

    def salary
        s = self.salary_per_day * self.days_work
    end

    def show_info
    puts  "employee: #{self.first_name} + #{self.last_name},\nTitle: #{self.title_job},\n"
        + "Salary: #{self.salary}"
    end

    
end

if __FILE__ == $0
    # your code
    

    e1 = Emoloyee.new("Trong","Nguyen",salary_per_day=2000, days_work=2)
    e2 = Emoloyee.new("Trong","Nguyen",salary_per_day=2000, days_work=3)
    e3 = Emoloyee.new("Trong","Nguyen",salary_per_day=2000, days_work=4)
    array_employee = [e1,e2,e3]
    puts "co 3 nhan vien"
    puts "Ban muon xem luong cua nhan vien thu may: "
    i  = gets.to_i
    puts "luong cua nhan vien thu #{i} la #{array_employee[i - 1].salary}"

end
  
