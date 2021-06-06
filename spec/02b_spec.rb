require './02/main2.rb'

RSpec.describe Main02b, "Ejercicio 2 B" do 
    it "debe parsear los datos" do
        result = Main02b.extract_data '1-9 x: xwjgxtmrzxzmkx'
        expected = {:end=>9, :letter=>"x", :pass=>"xwjgxtmrzxzmkx", :start=>1}
        expect(result).to eq(expected)
    end

    it "debe dar el resultado correcto" do
        result = Main02b.run 
        expect(result).to eq(472)
    end 

end