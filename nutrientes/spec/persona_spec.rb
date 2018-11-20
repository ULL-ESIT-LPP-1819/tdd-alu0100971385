require "spec_helper"
require 'benchmark'
require "./lib/nutrientes/persona.rb"

RSpec.describe Paciente do
    
    before :each do                 
        @persona1 = Paciente.new("Martín",80, 2.50, 25,"Hombre",nil, nil, nil)
        @persona2 = Paciente.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil, nil)
        @persona3 = Paciente.new("Alejandro", 75, 1.20, 16, "Hombre", nil, nil, nil)
        @persona4 = Paciente.new("Daniel", 115, 1.10, 20, "Hombre", nil, nil, nil)
        @persona5 = Paciente.new("Eduardo", 70, 1.78, 14, "Hombre", nil, nil, nil)
    end
    
    describe "#Pruebas para un paciente 1: " do
		it "Su clase padre es Persona" do
		    expect(@persona1.class.superclass).to eq(Persona)
		end
		
		it "Es una instancia de la clase Paciente" do
		    expect(@persona1.instance_of?Paciente).to eq(true)
		end
		
		it "Es un objeto Paciente" do
		    expect(@persona1.is_a?Paciente).to eq(true) 
		end
		
		it "Pertenece a la clase Paciente" do
		    expect(@persona1.class).to eq(Paciente)
		end
		
		it "Su tipo corresponde con el de Paciente" do
			expect(@persona1.respond_to?(:peso)).to eq(true)
			expect(@persona1.respond_to?(:talla)).to eq(true)
			expect(@persona1.respond_to?(:calculate)).to eq(true)
			expect(@persona1.respond_to?(:calculate2)).to eq(true)
		end
		
		it "Se ha recogido su talla" do
		    expect(@persona1.talla).not_to eq (nil)
		end
		
		it "Se ha recogido su peso" do
		    expect(@persona1.peso).not_to eq (nil)
		end
    
    end
	
    describe "#Pruebas para un paciente 2: " do
		it "Su clase padre es Persona" do
		    expect(@persona2.class.superclass).to eq(Persona)
		end
		
		it "Es una instancia de la clase Paciente" do
		    expect(@persona2.instance_of?Paciente).to eq(true)
		end
		
		it "Es un objeto Paciente" do
		    expect(@persona2.is_a?Paciente).to eq(true) 
		end
		
		it "Pertenece a la clase Paciente" do
		    expect(@persona2.class).to eq(Paciente)
		end
		
		it "Su tipo corresponde con el de Paciente" do
			expect(@persona2.respond_to?(:peso)).to eq(true)
			expect(@persona2.respond_to?(:talla)).to eq(true)
			expect(@persona2.respond_to?(:calculate)).to eq(true)
			expect(@persona2.respond_to?(:calculate2)).to eq(true)
		end
		
		it "Se ha recogido su talla" do
		    expect(@persona2.talla).not_to eq (nil)
		end
		
		it "Se ha recogido su peso" do
		    expect(@persona2.peso).not_to eq (nil)
		end
    
    end
	
	
	describe "#Pruebas para un paciente 3: " do
		it "Su clase padre es Persona" do
		    expect(@persona3.class.superclass).to eq(Persona)
		end
		
	    it "Es una instancia de la clase Paciente" do
		    expect(@persona3.instance_of?Paciente).to eq(true)
		end
		
		it "Es un objeto Paciente" do
		    expect(@persona3.is_a?Paciente).to eq(true) 
		end
		
		it "Pertenece a la clase Paciente" do
		    expect(@persona3.class).to eq(Paciente)
		end
		
		it "Su tipo corresponde con el de Paciente" do
			expect(@persona3.respond_to?(:peso)).to eq(true)
			expect(@persona3.respond_to?(:talla)).to eq(true)
			expect(@persona3.respond_to?(:calculate)).to eq(true)
			expect(@persona3.respond_to?(:calculate2)).to eq(true)
		end
		
		it "Se ha recogido su talla" do
		    expect(@persona3.talla).not_to eq (nil)
		end
		
		it "Se ha recogido su peso" do
		    expect(@persona3.peso).not_to eq (nil)
		end
    
    end
	
	
	describe "#Pruebas para un paciente 4: " do
		it "Su clase padre es Persona" do
		    expect(@persona4.class.superclass).to eq(Persona)
		end
		
		it "Es una instancia de la clase Paciente" do
		    expect(@persona4.instance_of?Paciente).to eq(true)
		end
		
		it "Es un objeto Paciente" do
		    expect(@persona4.is_a?Paciente).to eq(true) 
		end
		
		it "Pertenece a la clase Paciente" do
		    expect(@persona4.class).to eq(Paciente)
		end
		
		it "Su tipo corresponde con el de Paciente" do
			expect(@persona4.respond_to?(:peso)).to eq(true)
			expect(@persona4.respond_to?(:talla)).to eq(true)
			expect(@persona4.respond_to?(:calculate)).to eq(true)
			expect(@persona4.respond_to?(:calculate2)).to eq(true)
		end
		
		it "Se ha recogido su talla" do
		    expect(@persona4.talla).not_to eq (nil)
		end
		
		it "Se ha recogido su peso" do
		    expect(@persona4.peso).not_to eq (nil)
		end
    
    end
	
	
	describe "#Pruebas para un paciente 5: " do
		it "Su clase padre es Persona" do
		    expect(@persona5.class.superclass).to eq(Persona)
		end
		
		it "Es una instancia de la clase Paciente" do
		    expect(@persona5.instance_of?Paciente).to eq(true)
		end
		
		it "Es un objeto Paciente" do
		    expect(@persona5.is_a?Paciente).to eq(true) 
		end
		
		it "Pertenece a la clase Paciente" do
		    expect(@persona5.class).to eq(Paciente)
		end
		
		it "Su tipo corresponde con el de Paciente" do
			expect(@persona5.respond_to?(:peso)).to eq(true)
			expect(@persona5.respond_to?(:talla)).to eq(true)
			expect(@persona5.respond_to?(:calculate)).to eq(true)
			expect(@persona5.respond_to?(:calculate2)).to eq(true)
		end
		    
		it "Se ha recogido su talla" do
		    expect(@persona5.talla).not_to eq (nil)
		end
		
		it "Se ha recogido su peso" do
		    expect(@persona5.peso).not_to eq (nil)
		end
    
    end
	

    	
end

RSpec.describe DLL do
    
    before :each do                 
    	@persona1 = Paciente.new("Martín",80, 2.50, 25,"Hombre",nil, nil, nil)
        @persona2 = Paciente.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil, nil)
        @persona3 = Paciente.new("Alejandro", 75, 1.20, 16, "Hombre", nil, nil, nil)
        @persona4 = Paciente.new("Daniel", 115, 1.10, 20, "Hombre", nil, nil, nil)
        @persona5 = Paciente.new("Eduardo", 70, 1.78, 14, "Hombre", nil, nil, nil)
        @lista = DLL.new(@persona1)
        @lista.insert_tail(@persona2)
        @lista.insert_tail(@persona3)
        @lista.insert_tail(@persona4)
        @lista.insert_tail(@persona5)
    end
    
    describe "#Comprobando lista de humanos" do
    	it "Clasificación de IMC" do
    		expect(@lista.clasificacionimc).to eq(["Alejandro, obeso", "Daniel, obeso", "Eduardo, medio", "Lucía, obeso", "Martín, delgado"])
    	end
    	
    end
    
end