class Main04a
    def self.parse_field field
        datas = field.split(":")
        {datas[0]=>datas[1]}
    end

    def self.get_data
        data = []
        passport = {}
        File.open( "./04/input.txt").each do |line|
            if line == "\n"
                data << passport
                passport = {}
            else
                line.split(" ").each do |field|
                    passport.merge!(parse_field(field))
                end
            end
        end
        data << passport
        data
    end

    def self.passport_valid? passport
        fields = %w(ecl pid eyr hcl byr iyr hgt)
        fields.each do |field|
            return false if passport[field].nil?
        end
        true
    end
    def self.run
        num_valid = 0
        get_data.each do |passport|
            num_valid +=1 if passport_valid? passport
        end
        num_valid
    end
end

