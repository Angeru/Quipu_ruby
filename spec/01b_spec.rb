require './01/main2.rb'

RSpec.describe Main01b, "Ejercicio 1 B" do 
    it "debe dar el resultado correcto" do
        result = Main01b.run
        expect(result).to be 42140160
    end 
end