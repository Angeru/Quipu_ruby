def read_data
    total = []
    group = []
    File.open( "input.txt").each do |line|
        if line == "\n"
            total << group
            group = []
        else
            group << line.chomp
        end
    end
    total << group
    total
end

read_data.sum{|group| group.inject(:+).chars.uniq.count}