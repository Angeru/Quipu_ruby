require './05/main2.rb'

RSpec.describe Main05b, "Ejercicio 5 B" do 
    it "debe dar el resultado correcto" do
        result = Main05b.run
        expect(result).to be 517
    end

    it "debe parsear un asiento correctamente" do
        seat = "FBFFBFFRLL"
        result = Main05b.get_id(seat)
        expect(result).to be 292
    end 
end