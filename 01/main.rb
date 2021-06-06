class Main01a
    def self.run
        input_data = File.open( "./01/input.txt").map{|line| line.chomp.to_i}

        input_data.each_with_index do |data,index|
            input_data[index+1..-1].each do |data2|
                return data * data2 if data + data2 == 2020
            end
        end
    end
end