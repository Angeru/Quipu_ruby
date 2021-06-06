require './06/main2.rb'

RSpec.describe Main05b, "Ejercicio 6 A" do 
    it "debe dar el resultado correcto" do
        result = Main06b.run
        expect(result).to be 3316
    end

    it "debe leer los datos correctamente" do
        result = Main06b.read_data
        expect(result.count).to be 477
    end
end