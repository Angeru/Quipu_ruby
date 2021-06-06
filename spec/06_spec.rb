require './06/main.rb'

RSpec.describe Main05b, "Ejercicio 6 A" do 
    it "debe dar el resultado correcto" do
        result = Main06a.run
        expect(result).to be 6726
    end

    it "debe leer los datos correctamente" do
        result = Main06a.read_data
        expect(result.count).to be 477
    end
end