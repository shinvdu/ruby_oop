hh = lambda{
	aa = 34
	bb = 4
	xie = {a: 34}
	xie[:aa] = lambda {|block| 
		puts aa + bb
		block.call()
	 }	
	xie[:bb] = lambda { 
		puts bb +1000 
	}
	return xie
}
bb = 45
xie = hh.call();
hh = lambda { 
	puts bb + 250
}

xie[:aa].call(hh);
xie[:bb].call();
puts xie[:a]