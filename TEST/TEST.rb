#Time class test
require 'Date'
#puts Date.new(Time.now.year,Time.now.month,1).prev_month(3).strftime('%Y-%m-%d').class.name
#puts Date.new(Time.now.year,Time.now.month,1).prev_month(3).class.name
#puts Date.parse('2015-1-1').class.name
#puts DateTime.new(2015,2,4).beginning_of_month
puts Date.parse(Time.now.to_s).beginning_of_month.prev_month(3)