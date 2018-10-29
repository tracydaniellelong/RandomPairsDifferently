def random_pair(pair)
	ary = []
	to_pair = pair.shuffle.each_slice(4)
	to_pair.each do |x|
		case 
		when x.length == 4
			ary.push(x)
		when x.length == 1
			ary[rand(ary.length)].concat(x)
		end
	end
	p ary
	return ary

end