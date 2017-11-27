require 'date'

def friday_13th(year)
  f13th_count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    f13th_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  f13th_count
end

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2