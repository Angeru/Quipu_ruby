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
    count+=1 if (data[:pass][data[:start]-1] == data[:letter]) ^ (data[:pass][data[:end]-1] == data[:letter])
end
puts count