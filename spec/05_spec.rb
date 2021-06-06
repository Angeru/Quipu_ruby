require './05/main.rb'

RSpec.describe Main05a, "Ejercicio 5 A" do 
    it "debe dar el resultado correcto" do
        result = Main05a.run
        expect(result).to be 832
    end

    it "debe parsear un asiento correctamente" do
        seat = "FBFFBFFRLL"
        result = Main05a.get_id(seat)
        expect(result).to be 292
    end 
end