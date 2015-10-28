require 'csv'

folder1 = ARGV[0]
folder2 = ARGV[1]
array1 = []
array2 = []

num = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

Dir.glob(folder1 + "*").each { |filename|
	file = filename.split('/').last
	name = file.split('.').first
	#flen = file.length() / 2
	
	if name.scan(num).size == 7
		array1 << [file]
	end
}

Dir.glob(folder1 + "*").each { |filename|
	file = filename.split('/').last
	name = file.split('.').first
	flen = file.length() / 2
	
	if name.scan(num).size == 7 && array1.include?(file)
		array2 << [file,flen]
	end
}

array2.sort! { |x, y| y[0] <=> x[0]}

CSV.open("result.csv","w") { |csv_array|
	array2.each { |row|
		csv_array << row
	}
}
