class Bib
 
 attr_accessor :autor, :apellidos, :titulo, :serie, :editorial, :edicion, :fecha, :isbn #RW
 include Comparable # Módulo que permite que implementemos comparaciones convencionales en nuestra clase.
 
    def initialize(autor, apellidos, titulo, serie, editorial, edicion, fecha, isbn)
        @autor, @apellidos, @titulo, @serie, @editorial, @edicion, @fecha, @isbn = autor, apellidos, titulo, serie, editorial, edicion, fecha, isbn
    end

    def <=>(other) # Método para incluir el mixin comparable. 
        if other.is_a? Bib
          @titulo <=> other.titulo
        else
          false
        end
    end
      
    def ==(other) # Método de comparación añadido al mixin comparable.
        if other.is_a? Bib
          @titulo == other.titulo
        end
    end
    
    
 def to_s
  puts "#{@autor}, #{@titulo}, #{@serie}, #{@editorial}, #{@edicion}, #{@fecha}, #{@isbn}"
 end
    
 def get_autor
   size = @autor.length
    i = 0
    while i < (size-1)
        cadena = "#{cadena}"+"#{@autor[i]} #{@apellidos[i]}, "
        i = i+1
    end
    cadena = "#{cadena}"+"#{@autor[i]} #{@apellidos[i]}"
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
    
    def initialize (autor, apellidos, titulo, serie, editorial, edicion, fecha, isbnl)
        super(autor, apellidos, titulo, serie, editorial, edicion, fecha, isbnl)
        @isbnl=isbnl
    end
    
end

class Revista < Bib
    attr_reader :issn # Numero de serie 
    
    def initialize (autor, apellidos, titulo, serie, editorial, edicion, fecha, issn)
        super(autor, apellidos, titulo, serie, editorial, edicion, fecha, nil)
        @issn=issn
    end
end

class Periodico < Bib
    attr_reader :columnas
    
    def initialize (autor, apellidos, titulo, serie, editorial, edicion, fecha, columnas)
        super(autor, apellidos, titulo, serie, editorial, edicion, fecha, nil)
        @columnas=columnas
    end
end

class Electronico < Bib
    attr_reader :url
    
    def initialize (autor, apellidos, titulo, serie, editorial, edicion, fecha, url)
        super(autor, apellidos, titulo, serie, editorial, edicion, fecha, nil)
        @url=url
    end
end

#################################################################################################################################

Node = Struct.new :value, :next, :prev

class LinkedList
		attr_reader :head, :end
		
		include Enumerable

		def initialize()
			@head = nil
        	@end = nil
		end
		
	    def each 
            aux = @head 
            while aux != nil 
                yield aux.value 
                aux = aux.next 
            end
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

class Cita < LinkedList
    include Comparable
    attr_reader :bib
    
    def initialize (b)
       @bib=b 
    end

    def get_autor
        size = @bib.autor.length
        i = 0
        while i < (size-1)
            cadena = "#{cadena}"+"Autor, "
            cadena = "#{cadena}"+"#{@bib.apellidos[i][0]}. #{@bib.autor[i][0]}. & "
            i = i+1
        end
        cadena = "#{cadena}"+"Autor, "
        cadena = "#{cadena}"+"#{@bib.apellidos[i][0]}. #{@bib.autor[i][0]}. "
    end
    
    def <=>(other)
        return nil unless other.is_a? Cita
        if(@bib.apellidos == other.bib.apellidos)
            if(@bib.fecha == other.bib.fecha)
                @bib.titulo <=> other.bib.titulo
            else
                @bib.fecha <=> other.bib.fecha
            end
        else
            @bib.apellidos <=> other.bib.apellidos
        end
    end
    
    def get_titulo
        size = @bib.titulo.length
        @bib.titulo[0] = @bib.titulo[0].capitalize # Poner en mayúsculas.
        i=0
        while i < size
            if (@bib.titulo[i] == " ")
                bib.titulo[i+1] = bib.titulo[i+1].capitalize
            end
            i = i+1
        end
        @bib.titulo
    end
    
    def to_s
        if @bib.instance_of?Libro
            cadena = "#{get_autor}(#{@bib.fecha}).  "
            cadena = "#{cadena}"+"Titulo del libro: #{@bib.get_titulo} (#{@bib.get_edicion}).  "
            cadena = "#{cadena}"+"Lugar de publicacion: #{@bib.get_editorial}.  "
        end
        if @bib.instance_of?Revista
            cadena = "#{get_autor}(#{@bib.fecha}).  "
            cadena = "#{cadena}"+"Titulo de la revista: #{@bib.get_titulo} (#{@bib.get_edicion}).  "
            cadena = "#{cadena}"+"Lugar de publicacion: #{@bib.get_editorial}.  "
        end
        if @bib.instance_of?Periodico
            cadena = "#{get_autor}(#{@bib.fecha}).  "
            cadena = "#{cadena}"+"Titulo del articulo: #{@bib.get_titulo} (#{@bib.get_edicion}).  "
            cadena = "#{cadena}"+"Columnas: #{@bib.columnas}.  "
            cadena = "#{cadena}"+"Lugar de publicacion: #{@bib.get_editorial}.  "
        end
        if @bib.instance_of?Electronico
            cadena = "#{get_autor}(#{@bib.fecha}).  "
            cadena = "#{cadena}"+"Titulo: #{@bib.get_titulo} (#{@bib.get_edicion}).  "
            cadena = "#{cadena}"+"Lugar de publicacion: #{@bib.get_editorial}.  "
            cadena = "#{cadena}"+"Disponible en: #{@bib.url}  "
        end
        cadena
    end
end
