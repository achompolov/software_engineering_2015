h = Hash.new 
marks = 0
file = File.open(ARGV[0], "r")
file.each_line { |line|
  marks += line.scan(/[,.!?:;"()\[\]]/).count 	
  words = line.gsub(/[^a-z'^A-Z'\s-]/, '').split
  words.each { |w|
  	w.downcase!
  	if h.has_key?(w) 
  		h[w] = h[w] + 1 
	else
   		h[w] = 1 
  	end	
   	}
  } 
  h.sort{|a,b| a <=> b}.each { |word|
  
  puts "#{word[0]},#{word[1]}" 
        }
        if marks > 0 
  			puts "\"marks\", #{marks}"
  		end
