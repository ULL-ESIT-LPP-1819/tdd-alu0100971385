Node = Struct.new(:value, :next_, :prev)

class DLL
    
    attr_accessor :head, :tail
    
    def initialize(val)
       @head = Node.new(val,nil,nil)
       @tail = @head
    end
    
    def insert_tail(val)
       aux = Node.new(val,nil,@tail)
       @tail.next_ = aux
       @tail = aux
    end
    
    def insert_head(val)
       aux = Node.new(val,@head,nil)
       @head.prev = aux
       @head = aux
    end
    
    def extract_head
       aux = @head.value
       @head = @head.next_
       @head.prev = nil
       return aux
    end
    
    def extract_tail
       aux = @tail.value
       @tail = @tail.prev
       @tail.next_ = nil
       return aux
    end
    
    def get_head
        return @head.value
    end
    
    def get_tail
        return @tail.value
    end
    
    def to_s
        string = "("
        aux = @head
        while (aux != nil) do
            string += "#{aux.value.nombre}"
            #string += "#{aux.value.writesal} gr"
            if(aux.next_ != nil)
                string += ", "
            end
            aux = aux.next_
        end
        string += ")"
        return string
    end
    
    def clasificacion
        aux = @head
        aux2 = ""
        
        cart = Array.new
        while (aux != nil) do
            if (aux.value.writesal <= 8)
                aux2 = "poca sal"
            end
            if (aux.value.writesal > 8 && aux.value.writesal <= 20)
                aux2 = "normal de sal"
            end
            if(aux.value.writesal > 20)
                aux2 = "mucha sal"
            end
            cart.push(aux.value.write + "," + " " + aux2)
            aux = aux.next_
        end
        cart.sort
    end
    
    def clasificacionimc
        aux = @head
        aux2 = ""
        
        cart = Array.new
        while (aux != nil) do
            if aux.value.calculate < 18.5 
                aux.value.valor = 'delgado'
            else if aux.value.calculate < 24.9 
                aux.value.valor = 'medio'
            else 
                aux.value.valor = 'obeso'
            end
            
            end
            
            cart.push(aux.value.write + "," + " " + aux.value.valor)
            aux = aux.next_
        end
        cart.sort
    end
    
end