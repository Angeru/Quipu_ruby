def extract_data line
    data = line.split(" ")
    {
        :start => data[0].split("-").first.to_i,
        :end => data[0].split("-").last.to_i,
        :letter => data[1].gsub(":",""),
        :pass => data[2]
    }
end

count=0
File.open( "input.txt").each do |line|
    data = extract_data(line.chomp)   
    ocurrences = data[:pass].count(data[:letter])
    count+=1 if ocurrences >= data[:start] && ocurrences <= data[:end]
end
puts count