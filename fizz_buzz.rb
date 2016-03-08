x = 0

while x < 100
	x += 1
	if (x % 3 == 0) && (x % 5 == 0)
		puts "fizz buzz"

	elsif (x % 3 == 0)
		puts "fizz"
	elsif (x % 5 == 0)
		puts "buzz"
	else
		puts "#{x}"
	end
end