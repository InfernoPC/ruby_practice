#List of Top 3 Hills
in_ary = Array.new
10.times{ in_ary.push(gets.chomp.to_i) }
in_ary.sort!.reverse!
0.upto(2 ){|i| puts in_ary[i]}