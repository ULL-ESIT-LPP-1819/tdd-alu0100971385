require "spec_helper"
require 'benchmark'

RSpec.describe Paciente do
    
    before :each do                 
        @persona1 = Paciente.new("Martín",95, 2.50, 25,"Hombre", nil, nil, nil)
        @persona2 = Paciente.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil, nil)
        @persona3 = Paciente.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil, nil)
    end
    
    describe "#Pruebas para comprobar el modulo comparable en pacientes: " do
		it "Persona2 es igual a Persona3" do
        	expect(@persona2 == @persona3).to eq(true)
		end
		
		it "Persona es diferente a Persona2" do
        	expect(@persona1 != @persona2).to eq(true)
		end
		
		it "Persona es mayor que Persona3" do
        	expect(@persona1 >= @persona3).to eq(true)
		end
		
		it "Persona3 es menor que Persona" do
        	expect(@persona3 <= @persona1).to eq(true)
		end
  end
end