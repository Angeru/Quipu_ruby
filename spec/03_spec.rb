require './03/main.rb'

RSpec.describe Main01a, "Ejercicio 3 A" do 
    it "debe dar el resultado correcto" do
        result = Main03a.run
        expect(result).to be 218
    end 
end