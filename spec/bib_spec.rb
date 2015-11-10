#Andrea Pérez Quintana

require 'spec_helper'
require 'bib/bib_cod'

describe Bib do
 
 #it 'requires additional testing'
 
 before :each do
       
    autor = [ 'Dave Thomas', 'Andy Hunt', 'Chad Fowler' ]
    titulo = 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide'
    serie = '(The Facets of Ruby)'
    editorial = 'Pragmatic Bookshelf'
    edicion = '4 edition'
    fecha = 'July 7, 2013'
    isbn = [ 'ISBN-13: 978-1937785499', 'ISBN-10: 1937785491']
 
 @object1 = Bib.new(autor, titulo, serie, editorial, edicion, fecha, isbn) #Se crea el primer objeto
 
  end
  
  describe "# Object" do
    it "Creación de objeto" do
      @object1.should be_an_instance_of Bib
    end
  end
  
  describe "# Debe existir" do
   
    it "Uno o más autores" do
        expect(@object1.get_autor.length).to_not be 0  # Longitud de Autor no debe ser cero. spe
     
      
    end
   
    it "Un título" do
       expect(@object1.get_titulo.length).to_not be 0  
    end
   
    it "O no una serie" do
       expect(@object1.get_serie).to_not be 'V'  # V = vacío.
    end
    
    it "Una editorial" do
       expect(@object1.get_serie.length).to_not be 0
    end
   
    it "Una edición" do
       expect(@object1.get_edicion.length).to_not be 0
    end
   
    it "Una fecha" do
      expect(@object1.get_fecha.length).to_not be 0
    end
   
    it "Uno o más ISBN" do
       expect(@object1.get_isbn.length).to_not be 0 
    end
  end
end
