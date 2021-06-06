class Main06b
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
        total = 0
        read_data.each do |group|
            chars = group.inject(:+).chars.uniq
            chars.each do |char|
                total += 1 if group.all?{|line| line.include?(char) }
            end
        end
        total
    end
end


