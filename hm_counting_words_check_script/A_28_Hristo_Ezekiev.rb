require 'csv'

FILE.new('checkme.txt', "w")
FILE.open('checkme.txt', "w") {|file|
file.write "I like eating pizza, but i have never been to Pizza Hut"
}

CSV.open("checked.csv","w") do |csv|
  Dir.glob(ARGV[0]+"*").each do |filename|
    name = filename.split("/").last.split("_")
    result = `ruby #{filename} test.txt`
    solved = 0
    if result == "i,2\npizza,2\nbeen,1\nhave,1\nhut,1\neating,1\nlike,1\nnever,1\nbut,1\nto,1"
      solved = 1
    end
    csv << [name[0],name[1],name[2],name[3].split(".").first,solved]
  end
end

my_csv = CSV.read 'checked.csv'
my_csv.sort! do |x, y| 
	(x[0] == y[0]) ? (x[1].to_i <=> y[1].to_i): (x[0] <=> y[0])
end

CSV.open("checked.csv","w") do |csv_array|
	my_csv.each do |row|
		csv_array << row
	end
end
