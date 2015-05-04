#Switching Railroad Cars
st = Array.new
while gets
	$_.to_i.zero? ? puts(st.pop) : st.push($_)
end