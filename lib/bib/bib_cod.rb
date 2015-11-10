#Sofía Pizarro Arbelo

require "bib/version"

class Bib
 
 attr_accessor :autor, :titulo, :serie, :editorial, :edicion, :fecha, :isbn #RW
 
 #Constructor.
 
  def initialize(autor, titulo, serie, editorial, edicion, fecha, isbn)
     
   @autor, @titulo, @serie, @editorial, @edicion, @fecha, @isbn = autor, titulo, serie, editorial, edicion, fecha, isbn
   
  end
 
 #Método para obtener las referencias formateadas
 
    def referencias
     
      puts "#{@autor}, #{@titulo}, #{@serie}, #{@editorial}, #{@edicion}, #{@fecha}, #{@isbn}"
      
    end
    
 #Método para obtener listados de autores.

    def get_autor
        
     @autor
     
    end
    
     #Método para obtener titulo.

    def get_titulo
        
     @titulo
     
    end
    
     #Método para obtener serie.

    def get_serie
        
     @serie
     
    end
    
     #Método para obtener editorial.

    def get_editorial
        
     @editorial
     
    end
    
     #Método para obtener edicion.

    def get_edicion
        
     @edicion
     
    end
    
     #Método para obtener fecha.

    def get_fecha
        
     @fecha
     
    end
     
     #Método para obtener listado de isbn.

    def get_isbn
        
     @isbn
     
    end
  
end
