def random_pair(pair)
	ary = []
	to_pair = pair.shuffle.each_slice(2)
	to_pair.each do |x|
		if x.length == 2
			ary.push(x)
		end
	end
	return ary

end