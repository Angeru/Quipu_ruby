
input_data = File.open( "input.txt").map{|line| line.chomp.to_i}

input_data.each_with_index do |data,index|
    input_data[index+1..-1].each_with_index do |data2,index2|
        input_data[index2+1..-1].each_with_index do |data3,index2|
            puts "#{data} * #{data2} *  #{data3} = #{data * data2 * data3}" if data + data2 + data3 == 2020
        end
    end
end;nil