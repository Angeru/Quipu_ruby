class Main06a
    def self.read_data
        total = []
        group = []
        File.open( "./06/input.txt").each do |line|
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
    def self.run
        read_data.sum{|group| group.inject(:+).chars.uniq.count}
    end
end