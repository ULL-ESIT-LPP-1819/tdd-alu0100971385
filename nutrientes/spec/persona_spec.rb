require "spec_helper"
require 'benchmark'
require "./lib/nutrientes/persona.rb"

RSpec.describe Obeso do
    
    before :each do                 
        @persona1 = Obeso.new("Martín",80, 2.50, 25,"Hombre",nil, nil, nil)
        @persona2 = Obeso.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil, nil)
        @persona3 = Obeso.new("Alejandro", 75, 1.20, 16, "Hombre", nil, nil, nil)
        @persona4 = Obeso.new("Daniel", 115, 1.10, 20, "Hombre", nil, nil, nil)
        @persona5 = Obeso.new("Eduardo", 70, 1.78, 14, "Hombre", nil, nil, nil)
    end
    
    describe "#Pruebas para un paciente obeso 1: " do
		it "Su clase padre es Paciente" do
		    expect(@persona1.class.superclass).to eq(Paciente)
		end
		
		it "Es una instancia de la clase Obeso" do
		    expect(@persona1.instance_of?Obeso).to eq(true)
		end
		
		it "Es un objeto Obeso" do
		    expect(@persona1.is_a?Obeso).to eq(true) 
		end
		
		it "Pertenece a la clase Obeso" do
		    expect(@persona1.class).to eq(Obeso)
		end
		    
		it "No es una instancia de la clase No Obeso" do
		    expect(@persona1.instance_of?No_Obeso).to eq(false)
		end
		
		it "Se ha recogido su talla" do
		    expect(@persona1.talla).not_to eq (nil)
		end
		
		it "Se ha recogido su peso" do
		    expect(@persona1.peso).not_to eq (nil)
		end
    
    end
	
    describe "#Pruebas para un paciente obeso 2: " do
		it "Su clase padre es Paciente" do
		    expect(@persona2.class.superclass).to eq(Paciente)
		end
		
		it "Es una instancia de la clase Obeso" do
		    expect(@persona2.instance_of?Obeso).to eq(true)
		end
		
		it "Es un objeto Obeso" do
		    expect(@persona2.is_a?Obeso).to eq(true) 
		end
		
		it "Pertenece a la clase Obeso" do
		    expect(@persona2.class).to eq(Obeso)
		end
		    
		it "No es una instancia de la clase No Obeso" do
		    expect(@persona2.instance_of?No_Obeso).to eq(false)
		end
		
		it "Se ha recogido su talla" do
		    expect(@persona2.talla).not_to eq (nil)
		end
		
		it "Se ha recogido su peso" do
		    expect(@persona2.peso).not_to eq (nil)
		end
    
    end
	
	
	describe "#Pruebas para un paciente obeso 3: " do
		it "Su clase padre es Paciente" do
		    expect(@persona3.class.superclass).to eq(Paciente)
		end
		
	    it "Es una instancia de la clase Obeso" do
		    expect(@persona3.instance_of?Obeso).to eq(true)
		end
		
		it "Es un objeto Obeso" do
		    expect(@persona3.is_a?Obeso).to eq(true) 
		end
		
		it "Pertenece a la clase Obeso" do
		    expect(@persona3.class).to eq(Obeso)
		end
		    
		it "No es una instancia de la clase No Obeso" do
		    expect(@persona3.instance_of?No_Obeso).to eq(false)
		end
		
		it "Se ha recogido su talla" do
		    expect(@persona3.talla).not_to eq (nil)
		end
		
		it "Se ha recogido su peso" do
		    expect(@persona3.peso).not_to eq (nil)
		end
    
    end
	
	
	describe "#Pruebas para un paciente obeso 4: " do
		it "Su clase padre es Paciente" do
		    expect(@persona4.class.superclass).to eq(Paciente)
		end
		
		it "Es una instancia de la clase Obeso" do
		    expect(@persona4.instance_of?Obeso).to eq(true)
		end
		
		it "Es un objeto Obeso" do
		    expect(@persona4.is_a?Obeso).to eq(true) 
		end
		
		it "Pertenece a la clase Obeso" do
		    expect(@persona4.class).to eq(Obeso)
		end
		    
		it "No es una instancia de la clase No Obeso" do
		    expect(@persona4.instance_of?No_Obeso).to eq(false)
		end
		
		it "Se ha recogido su talla" do
		    expect(@persona4.talla).not_to eq (nil)
		end
		
		it "Se ha recogido su peso" do
		    expect(@persona4.peso).not_to eq (nil)
		end
    
    end
	
	
	describe "#Pruebas para un paciente obeso 5: " do
		it "Su clase padre es Paciente" do
		    expect(@persona5.class.superclass).to eq(Paciente)
		end
		
		it "Es una instancia de la clase Obeso" do
		    expect(@persona5.instance_of?Obeso).to eq(true)
		end
		
		it "Es un objeto Obeso" do
		    expect(@persona5.is_a?Obeso).to eq(true) 
		end
		
		it "Pertenece a la clase Obeso" do
		    expect(@persona5.class).to eq(Obeso)
		end
		    
		it "No es una instancia de la clase No Obeso" do
		    expect(@persona5.instance_of?No_Obeso).to eq(false)
		end
		
		it "Se ha recogido su talla" do
		    expect(@persona5.talla).not_to eq (nil)
		end
		
		it "Se ha recogido su peso" do
		    expect(@persona5.peso).not_to eq (nil)
		end
    
    end
	

    	
end

RSpec.describe No_Obeso do
    
    before :each do                 
        @persona1 = No_Obeso.new("Pedro",nil, nil, 23,"Hombre",nil, nil, nil)
        @persona2 = No_Obeso.new("Laura", nil, nil, 18, "Mujer", nil, nil, nil)
        @persona3 = No_Obeso.new("Marta", nil, nil, 31, "Mujer", nil, nil, nil)
        @persona4 = No_Obeso.new("Raúl", nil, nil, 15, "Hombre", nil, nil, nil)
        @persona5 = No_Obeso.new("Antonio", nil, nil, 21, "Hombre", nil, nil, nil)
    end
    
    describe "#Pruebas para un paciente no obeso 1: " do
		it "Su clase padre es Paciente" do
		    expect(@persona1.class.superclass).to eq(Paciente)
		end
		
		it "Es una instancia de la clase No Obeso" do
		    expect(@persona1.instance_of?No_Obeso).to eq(true)
		end
		
		it "Es un objeto No Obeso" do
		    expect(@persona1.is_a?No_Obeso).to eq(true) 
		end
		
		it "Pertenece a la clase No Obeso" do
		    expect(@persona1.class).to eq(No_Obeso)
		end
		    
		it "No es una instancia de la clase Obeso" do
		    expect(@persona1.instance_of?Obeso).to eq(false)
		end
		
		it "No se ha recogido su talla" do
		    expect(@persona1.talla).to eq (nil)
		end
		
		it "No se ha recogido su peso" do
		    expect(@persona1.peso).to eq (nil)
		end
    
    end
	
    describe "#Pruebas para un paciente no obeso 2: " do
		it "Su clase padre es Paciente" do
		    expect(@persona2.class.superclass).to eq(Paciente)
		end
		
		it "Es una instancia de la clase No Obeso" do
		    expect(@persona2.instance_of?No_Obeso).to eq(true)
		end
		
		it "Es un objeto No Obeso" do
		    expect(@persona2.is_a?No_Obeso).to eq(true) 
		end
		
		it "Pertenece a la clase No Obeso" do
		    expect(@persona2.class).to eq(No_Obeso)
		end
		    
		it "No es una instancia de la clase Obeso" do
		    expect(@persona2.instance_of?Obeso).to eq(false)
		end
		
		it "No se ha recogido su talla" do
		    expect(@persona2.talla).to eq (nil)
		end
		
		it "No se ha recogido su peso" do
		    expect(@persona2.peso).to eq (nil)
		end
    
    end
	
	
	describe "#Pruebas para un paciente no obeso 3: " do
		it "Su clase padre es Paciente" do
		    expect(@persona3.class.superclass).to eq(Paciente)
		end
		
	    it "Es una instancia de la clase No Obeso" do
		    expect(@persona3.instance_of?No_Obeso).to eq(true)
		end
		
		it "Es un objeto No Obeso" do
		    expect(@persona3.is_a?No_Obeso).to eq(true) 
		end
		
		it "Pertenece a la clase No Obeso" do
		    expect(@persona3.class).to eq(No_Obeso)
		end
		    
		it "No es una instancia de la clase Obeso" do
		    expect(@persona3.instance_of?Obeso).to eq(false)
		end
		
		it "No se ha recogido su talla" do
		    expect(@persona3.talla).to eq (nil)
		end
		
		it "No se ha recogido su peso" do
		    expect(@persona3.peso).to eq (nil)
		end
    
    end
	
	
	describe "#Pruebas para un paciente no obeso 4: " do
		it "Su clase padre es Paciente" do
		    expect(@persona4.class.superclass).to eq(Paciente)
		end
		
		it "Es una instancia de la clase No Obeso" do
		    expect(@persona4.instance_of?No_Obeso).to eq(true)
		end
		
		it "Es un objeto No Obeso" do
		    expect(@persona4.is_a?No_Obeso).to eq(true) 
		end
		
		it "Pertenece a la clase No Obeso" do
		    expect(@persona4.class).to eq(No_Obeso)
		end
		    
		it "No es una instancia de la clase Obeso" do
		    expect(@persona4.instance_of?Obeso).to eq(false)
		end
		
		it "No se ha recogido su talla" do
		    expect(@persona4.talla).to eq (nil)
		end
		
		it "No se ha recogido su peso" do
		    expect(@persona4.peso).to eq (nil)
		end
    
    end
	
	
	describe "#Pruebas para un paciente obeso 5: " do
		it "Su clase padre es Paciente" do
		    expect(@persona5.class.superclass).to eq(Paciente)
		end
		
		it "Es una instancia de la clase No Obeso" do
		    expect(@persona5.instance_of?No_Obeso).to eq(true)
		end
		
		it "Es un objeto No Obeso" do
		    expect(@persona5.is_a?No_Obeso).to eq(true) 
		end
		
		it "Pertenece a la clase No Obeso" do
		    expect(@persona5.class).to eq(No_Obeso)
		end
		    
		it "No es una instancia de la clase Obeso" do
		    expect(@persona5.instance_of?Obeso).to eq(false)
		end
		
		it "No se ha recogido su talla" do
		    expect(@persona5.talla).to eq (nil)
		end
		
		it "No se ha recogido su peso" do
		    expect(@persona5.peso).to eq (nil)
		end
		
    
    end
	

    	
end

RSpec.describe DLL do
    
    before :each do                 
    	@persona1 = Obeso.new("Martín",80, 2.50, 25,"Hombre",nil, nil, nil)
        @persona2 = Obeso.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil, nil)
        @persona3 = Obeso.new("Alejandro", 75, 1.20, 16, "Hombre", nil, nil, nil)
        @persona4 = Obeso.new("Daniel", 115, 1.10, 20, "Hombre", nil, nil, nil)
        @persona5 = Obeso.new("Eduardo", 70, 1.78, 14, "Hombre", nil, nil, nil)
        @lista = DLL.new(@persona1)
        @lista.insert_tail(@persona2)
        @lista.insert_tail(@persona3)
        @lista.insert_tail(@persona4)
        @lista.insert_tail(@persona5)
    end
    
    describe "#Comprobando lista de humanos" do
    	it "Clasificación de IMC" do
    		expect(@lista.clasificacionimc).to eq(["Alejandro, obeso", "Daniel, obeso", "Eduardo, medio", "Lucía, obeso", "Martín, delgado"])
    		#Jiaqi puto chino de mierda come ratas 
    	end
    	
    end
    
end