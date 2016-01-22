# Hours in a year 24 hours a day and 365 days in a year
puts 24*365

#Minutes in a decade. 60 min/hr - 24hr/day - 365day/yr - 10yr/dec
puts 60*24*365*10

#Age in seconds. Assume 29 yrs old. 3600s/hr - 24hr/day - 365day/yr - 29yrs
puts 3600*24*365*29

#Age of author at the time of publishing. 1025000000s old. 3600s/hr - 24hr/day - 365day/yr
remain = 1025000000.0/(3600.0*24.0*365.0)
puts "remain = #{remain}"
years = remain.to_i
remain = (remain - years) * 365.0
puts "remain = #{remain}"
days = remain.to_i
remain = (remain - days) * 24.0
puts "remain = #{remain}"
hours = remain.to_i
remain = (remain - hours) * 60.0
puts "Remain = #{remain}"
minutes = remain.to_i
remain = (remain - minutes) * 60.0
puts "Remain = #{remain}"
seconds = remain.to_i
puts "Author is #{years} years #{days} days #{hours} hours #{minutes} minutes and #{seconds} seconds old"
