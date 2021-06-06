require './04/main.rb'

RSpec.describe Main01a, "Ejercicio 4 A" do 
    it "debe dar el resultado correcto" do
        result = Main04a.run
        expect(result).to be 235
    end 

    it "debe parsear un campo correctamente" do
        result = Main04a.parse_field "eyr:2027"
        expected={"eyr"=>"2027"}
        expect(result).to eq(expected)
    end

    it "debe cargar los datos correctamente" do
        result = Main04a.get_data
        expect(result.size).to eq(291)
    end

    it "debe checkear el pasaporte correctamente" do
        passport = {"eyr"=>"2027", "hcl"=>"#602927", "hgt"=>"186cm", "byr"=>"1939", "iyr"=>"2019", "pid"=>"552194973", "ecl"=>"hzl"}
        result = Main04a.passport_valid? passport
        expect(result).to eq(true)
    end
end