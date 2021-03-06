def transfer(arr, num)
  counter = 0

  arr.each_with_index do |i, index|
    if i.to_s[i.to_s.length - 1] == num.to_s
      arr[counter], arr[index] = arr[index], arr[counter]
      counter += 1
    end
  end

  arr
end

x = 0

loop do
  puts 'Enter a number between 1 and 10'
  x = gets.to_i

  break if x > 0 && x < 10
end

arr = []

(0..99).each do |i|
  arr[i] = rand(100)
end

arr = transfer(arr, x)
puts arr
