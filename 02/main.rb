count=0
File.open( "input.txt").each do |line|
    data = extract_data(line.chomp)
    start = data[0].split("-").first.to_i
    endd = data[0].split("-").last.to_i
    letter = data[1].gsub(":","")
    ocurrences = data[2].count(letter)
    count+=1 if ocurrences >= start && ocurrences <= endd
end
puts count