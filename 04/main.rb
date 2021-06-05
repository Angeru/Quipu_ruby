def parse_field field
    datas = field.split(":")
    {datas[0]=>datas[1]}
end

def get_data
    data = []
    passport = {}
    File.open( "input.txt").each do |line|
        if line == "\n"
            data << passport
            passport = {}
        else
            line.split(" ").each do |field|
                passport.merge!(parse_field(field))
            end
        end
    end
    data
end

def passport_valid? passport
    fields = %w(ecl pid eyr hcl byr iyr hgt)
    fields.each do |field|
        return false if passport[field].nil?
    end
    true
end

num_valid = 0
get_data.each do |passport|
    num_valid +=1 if passport_valid? passport
end
num_valid

