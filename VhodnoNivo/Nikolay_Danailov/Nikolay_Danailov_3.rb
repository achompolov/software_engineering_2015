require 'prime'

x = 0
y = 0

loop do
	puts "Enter two whole numbers, the first of which is smaller"

	x = gets.to_i
	y = gets.to_i

	break if x < y
end

(x..y).each{ |i| 
	if Prime.prime?(i)
		i_str = i.to_s

		if i_str[i_str.length - 1] == '3'
			puts i
		end
	end
}