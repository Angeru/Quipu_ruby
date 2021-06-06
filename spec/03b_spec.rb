require './03/main2.rb'

RSpec.describe Main01a, "Ejercicio 3 B" do 
    it "debe dar el resultado correcto" do
        result = Main03b.run
        expect(result).to be 3847183340
    end 

    it "check_solpe debe dar el valor correcto" do
        result = Main03b.check_slope 1,1
        expect(result).to be 77
    end

end