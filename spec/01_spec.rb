require './01/main.rb'

RSpec.describe Main01a, "Ejercicio 1 A" do 
    it "debe dar el resultado correcto" do
        result = Main01a.run
        expect(result).to be 1010299
    end 
end