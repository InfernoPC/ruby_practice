#Prime Number
pr = Array.new(1000000,1)
(2..1000).each do |i|
    next if pr[i] == 0
    (i**2).step(1000000,i){ |j| pr[j] = 0 }
end
pr[0] = pr[1] = 0
(2..1000000).each{ |i| pr[i] = pr[i] == 1 ? pr[i-1]+1 : pr[i-1] }
while gets
    p pr[$_.to_i]
end