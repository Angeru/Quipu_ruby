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
    data << passport
    data
end

def passport_valid? passport
    expresions = {
      "byr"=> 1920..2002,
      "iyr"=> 2010..2020,
      "eyr"=> 2020..2040,
      "hgt"=> /^1([5-8]\d|9[0-3])cm|(59|6\d|7[0-6])in$/,
      "hcl"=> /^#[0-9a-f]{6}$/,
      "ecl"=> /^(amb|blu|brn|gry|grn|hzl|oth)$/,
      "pid"=> /^\d{9}$/
    }
    
    expresions.each do |field,expresion|
        return false if passport[field].nil?
        if expresion.is_a?(Regexp)
            return false if passport[field].match(expresion).nil?
        else
            return false unless expresion.cover?(passport[field].to_i)
        end
    end
    true
end

num_valid = 0
get_data.each do |passport|
    num_valid +=1 if passport_valid? passport
end;nil
num_valid

