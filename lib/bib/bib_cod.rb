class Bib
 
 attr_accessor :autor, :titulo, :serie, :editorial, :edicion, :fecha, :isbn #RW

 def initialize(autor, titulo, serie, editorial, edicion, fecha, isbn)
   @autor, @titulo, @serie, @editorial, @edicion, @fecha, @isbn = autor, titulo, serie, editorial, edicion, fecha, isbn
 end

 def to_s
  puts "#{@autor}, #{@titulo}, #{@serie}, #{@editorial}, #{@edicion}, #{@fecha}, #{@isbn}"
 end
    
 def get_autor
  @autor
 end
    
 def get_titulo
  @titulo
 end
    
 def get_serie
  @serie
 end
    
 def get_editorial
  @editorial
 end
    
 def get_edicion
  @edicion
 end
    
 def get_fecha
  @fecha
 end
     
 def get_isbn
  @isbn
 end
 
end

class Libro < Bib
    attr_reader :isbnl
    
    def initialize (autor, titulo, serie, editorial, edicion, fecha, isbnl)
        super(autor, titulo, serie, editorial, edicion, fecha, isbnl)
        @isbnl=isbnl
    end
    
end

class Revista < Bib
    attr_reader :issn # Numero de serie 
    
    def initialize (autor, titulo, serie, editorial, edicion, fecha, issn)
        super(autor, titulo, serie, editorial, edicion, fecha, nil)
        @issn=issn
    end
end

class Periodico < Bib
    attr_reader :columnas
    
    def initialize (autor, titulo, serie, editorial, edicion, fecha, columnas)
        super(autor, titulo, serie, editorial, edicion, fecha, nil)
        @columnas=columnas
    end
end

class Electronico < Bib
    attr_reader :url
    
    def initialize (autor, titulo, serie, editorial, edicion, fecha, url)
        super(autor, titulo, serie, editorial, edicion, fecha, nil)
        @url=url
    end
end

################################################################################

Node = Struct.new :value, :next, :prev

class LinkedList
		attr_reader :head, :end

		def initialize()
			@head = nil
        	@end = nil
		end
		
		def pushf(value) # Se inserta por el final.
			 nodo = Node.new(value,nil,nil)
        	if(@head==nil)
            	@end = nodo
            	@head= nodo
        	else
            	nodo.prev = @end
            	@end.next = nodo
            	@end = nodo
        	end
		end
		
		def pushi(value) # Se inserta por el inicio.
			nodo = Node.new(value,nil,nil)
        	if(@head==nil)
            	@end = nodo
            	@head = nodo
        	else
            	nodo.next = @head
            	@head.prev = nodo
            	@head = nodo
        	end
  end
		
		def popf() # Se extrae por el final.
        	if(@head==nil)
            	return false
        	else
            	valor = @end.value
            	@end = @end.prev
            	if(@end == nil)
                	@head = nil
            	else
                	@end.next = nil
            	end
            	return valor
        	end
  end
    	
  def popi() # Se extrae por el inicio.
    	if(@head==nil)
        		return false
    	else
        	 valor = @head.value
          @head = @head.next
        	 if(vacia == false)
            		@head.prev = nil
          end
            	return valor
     end	
  end
    
end