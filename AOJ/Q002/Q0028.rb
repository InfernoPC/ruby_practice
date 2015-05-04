#Mode Value
seq = Hash.new(0)
seq[$_.to_i] += 1 while gets
puts seq.select{|hash, key| key == seq.values.max}.keys.sort