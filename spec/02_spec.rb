require './02/main.rb'

RSpec.describe Main02a, "Ejercicio 2 A" do 
    it "debe parsear los datos" do
        result = Main02a.extract_data '1-9 x: xwjgxtmrzxzmkx'
        expected = {:end=>9, :letter=>"x", :pass=>"xwjgxtmrzxzmkx", :start=>1}
        expect(result).to eq(expected)
    end

    it "debe dar el resultado correcto" do
        result = Main02a.run 
        expect(result).to eq(640)
    end 

end