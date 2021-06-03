
input_data = File.open( "input.txt").map{|line| line.chomp.to_i}

input_data.each_with_index do |data,index|
    input_data[index+1..-1].each do |data2|
        puts "#{data} * #{data2} = #{data * data2}" if data + data2 == 2020
    end
end;nil