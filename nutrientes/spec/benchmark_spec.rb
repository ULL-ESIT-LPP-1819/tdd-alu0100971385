require "spec_helper"
require 'benchmark'

RSpec.describe Paciente do
    before :each do
        
    @arrayfor = []
    @arrayeach = []
    @arraysort = []
    
    @dllfor = []
    @dlleach = []
    @dllsort = []
    
    @sortedarray = []
    
    @auxiliar = 0.0
                
    @prueba1 = Nutri.new("Hamburguesa",1200,2,0.6,1,3.5,0.7,11,4,2.7,1.6,7,2.3,5.3,1,20)
	@prueba2 = Nutri.new("Perrito",500,2,0.5,2,3.5,0.7,3,1.6,2.7,4.8,9,2.3,3.7,1,20)
	@prueba3 = Nutri.new("Flan",250,2,0.5,2,3.5,0.7,3,1.6,2.7,4.8,2,2.3,3.7,1,20)
	@prueba4 = Nutri.new("Pizza",100,2,0.6,5,3.5,0.7,5,4,2.7,1.6,7,2.3,5.3,1,20)
	@prueba5 = Nutri.new("Helado",100,1,0.5,2,3.5,0.7,9,1.6,2.7,4.8,9,2.3,3.7,1,20)
	@prueba6 = Nutri.new("Caviar",1200,2,0.6,1,5,1,12,4,2.7,1.6,7,2.3,5.3,1,20)
	@prueba7 = Nutri.new("San jacobo",500,2,0.5,2,32.5,0.7,3,1.6,2.7,4.8,9,2.3,3.7,1,20)
	@prueba8 = Nutri.new("Burrito",250,2,0.5,2,4,0.7,3,1.6,2.7,4.8,2,2.3,3.7,1,20)
	@prueba9 = Nutri.new("Manzana",100,2,0.6,5,15,0.7,5,4,2.7,1.6,7,2.3,5.3,1,20)
	@prueba10 = Nutri.new("Salmón",100,1,0.5,2,35,0.7,9,1.6,2.7,4.8,9,2.3,3.7,1,20)
    
    @menus = [@prueba1,@prueba2,@prueba3,@prueba4,@prueba5,@prueba6,@prueba7,@prueba8,@prueba9,@prueba10]
    @sortedarray = @menus
    
    @persona1 = Paciente.new("Martín",80, 2.50, 25,"Hombre",nil, nil, nil)
    @persona2 = Paciente.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil, nil)
    @persona3 = Paciente.new("Alejandro", 75, 1.80, 16, "Hombre", nil, nil, nil)
    @persona4 = Paciente.new("Daniel", 115, 1.95, 20, "Hombre", nil, nil, nil)
    @persona5 = Paciente.new("Eduardo", 70, 1.78, 14, "Hombre", nil, nil, nil)
    @persona6 = Paciente.new("Luis",80, 2.50, 26,"Hombre",nil, nil, nil)
    @persona7 = Paciente.new("Pedro", 85, 1.72, 20, "Hombre", nil, nil, nil)
    @persona8 = Paciente.new("Petra", 50, 1.20, 16, "Mujer", nil, nil, nil)
    @persona9 = Paciente.new("Ángel", 115, 1.95, 21, "Hombre", nil, nil, nil)
    @persona10 = Paciente.new("Miguel", 71, 1.78, 13, "Hombre", nil, nil, nil)
    
    @persona1.setactividad(0.12)
    @persona2.setactividad(0.12)
    @persona3.setactividad(0.27)
    @persona4.setactividad(0.54)
    @persona5.setactividad(0.27)
    @persona6.setactividad(0.27)
    @persona7.setactividad(0.12)
    @persona8.setactividad(0.54)
    @persona9.setactividad(0.12)
    @persona10.setactividad(0.54)
    
    @lista = DLL.new(@persona1)
    @lista.insert_tail(@persona2)
    @lista.insert_tail(@persona3)
    @lista.insert_tail(@persona4)
    @lista.insert_tail(@persona5)
    @lista.insert_tail(@persona6)
    @lista.insert_tail(@persona7)
    @lista.insert_tail(@persona8)
    @lista.insert_tail(@persona9)
    @lista.insert_tail(@persona10)
    
    end
    
    describe "Ordenando el array de etiquetas: " do
        
        it "Ordenando el array de etiquetas con for" do
            
            @arrayfor = @menus
            
            n=@arrayfor.length
            for i in 0...n
                min=i
                for j in (i+1)...n
                    if @arrayfor[j] < @arrayfor[min]
                        aux = @arrayfor[j]
                        @arrayfor[j] = @arrayfor[min]
                        @arrayfor[min] = aux
                    end
                end
            end
    
            expect(@arrayfor).to eq([@prueba2,@prueba3,@prueba8,@prueba4,@prueba5,@prueba1,@prueba6,@prueba9,@prueba7,@prueba10])
    
        end
    
    
        it "Ordenando el array de etiquetas con each" do
            
            @arrayeach = @menus
            
            @arrayeach.each_with_index do |el,i|
                min = i
                @arrayeach[1..-1].each_with_index do |el,j|
                    if @arrayeach[j] > @arrayeach[min]
                        aux = @arrayeach[j]
                        @arrayeach[j] = @arrayeach[min]
                        @arrayeach[min] = aux
                    end
                end
            end
            
            expect(@arrayeach).to eq([@prueba2,@prueba3,@prueba8,@prueba4,@prueba5,@prueba1,@prueba6,@prueba9,@prueba7,@prueba10])
    
        end
        
        it "Ordenando el array de etiquetas con sort" do
            
            @arraysort = @menus
            @arraysort = @arraysort.sort
            
            expect(@arraysort).to eq([@prueba2,@prueba3,@prueba8,@prueba4,@prueba5,@prueba1,@prueba6,@prueba9,@prueba7,@prueba10])
         
        end
    
    end
    
    describe "Ordenando la lista de individuos:" do
        
        it "Ordenando la lista de individuos con for" do
            
            for persona in @lista
                @dllfor.insert(0,persona.getgastototal)
            end
            
            n=@dllfor.length
            for i in 0...n
                min=i
                for j in (i+1)...n
                    if @dllfor[j] < @dllfor[min]
                        aux = @dllfor[j]
                        @dllfor[j] = @dllfor[min]
                        @dllfor[min] = aux
                    end
                end
            end
    
            expect(@dllfor).to eq([437.05999999999995, 731.5425, 848.6625, 885.19125, 934.215, 940.1625, 946.15625, 1084.245, 1295.86875, 1750.1875])
            
        end
        
        it "Ordenando la lista de individuos con each" do
            
            @lista.each do |persona|
                @dlleach.insert(0,persona.getgastototal)
            end
            
            @dlleach.each_with_index do |el,i|
                min = i
                @dlleach[1..-1].each_with_index do |el,j|
                    if @dlleach[j] > @dlleach[min]
                        aux = @dlleach[j]
                        @dlleach[j] = @dlleach[min]
                        @dlleach[min] = aux
                    end
                end
            end
        
            expect(@dlleach).to eq([437.05999999999995, 731.5425, 848.6625, 885.19125, 934.215, 940.1625, 946.15625, 1084.245, 1295.86875, 1750.1875])
        end
    
        it "Ordenar los individuos con sort" do
            
            @lista.each do |persona|
                @dllsort.insert(0,persona.getgastototal)
            end
            
            @dllsort = @dllsort.sort
            
            expect(@dllsort).to eq([437.05999999999995, 731.5425, 848.6625, 885.19125, 934.215, 940.1625, 946.15625, 1084.245, 1295.86875, 1750.1875])
            
        end
    end
    
    context "Benchmark" do
	    def for_array! (array)
            for i in 0..array.size 
                min = i
                for j in i+1..array.size-1    
                    if(array[j] > array[min])
                        aux = array[j]
                        array[j] = array[min]
                        array[min] = aux
                    end
                end
            end
        end
    
        def each_array! (array) 
            array.each do
                auxiliar = 0
                array.each_with_index do |el, i|
                    min = i
                    array[1..-1].each_with_index do |el,j|
                        if array[j] > array[min]
                            aux = array[j]
                            array[j] = array[min]
                            array[min] = aux
                        end
                    end
        
                end
            end
        end
        
        def for_list! (lista)
           for persona in @lista
                @dllfor.insert(0,persona.getgastototal)
            end
            
            n=@dllfor.length
            for i in 0...n
                min=i
                for j in (i+1)...n
                    if @dllfor[j] < @dllfor[min]
                        aux = @dllfor[j]
                        @dllfor[j] = @dllfor[min]
                        @dllfor[min] = aux
                    end
                end
            end 
        end
        
        def each_list! (lista)
           @lista.each do |persona|
                @dlleach.insert(0,persona.getgastototal)
            end
            
            @dlleach.each_with_index do |el,i|
                min = i
                @dlleach[1..-1].each_with_index do |el,j|
                    if @dlleach[j] > @dlleach[min]
                        aux = @dlleach[j]
                        @dlleach[j] = @dlleach[min]
                        @dlleach[min] = aux
                    end
                end
            end 
        end
        
        it "Comprobación benchmark " do
            
            Benchmark.bm do |x|
                
                x.report("Resultados array con for") {for_array!(@sortedarray)}
                x.report("Resultados array con each") {each_array!(@sortedarray)}
                x.report("Resultados array con sort") { @sortedarray.sort}
                
            end
            
            Benchmark.bm do |x|
                
                x.report("Resultados lista con for") {for_list!(@dllfor)}
                x.report("Resultados lista con each") {each_list!(@dlleach)}
                x.report("Resultados lista con sort") { @dllsort.sort}
                
            end
            
        end
    end
    
end
