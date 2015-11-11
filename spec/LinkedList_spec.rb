require 'spec_helper'
require 'bib/bib_cod'
require 'bib/LinkedList'

describe Bib do
      before :each do
        @object2 = Bib.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler' ], 
        'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide', 
        '(The Facets of Ruby)',  'Pragmatic Bookshelf', '4 edition', 
        'July 7, 2013', [ 'ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
        
        @object3 = Bib.new('Scott Chacon', 'Pro Git 2009th Edition', 'Pro', 'Apress', 
        '2009 edition', 'August 27, 2009', ['ISBN-13: 978-1430218333','ISBN-10: 1430218339'])
        
        @object4 = Bib.new(['David Flanagan', 'Yukihiro Matsumoto'], 'The Ruby Programming Language',
        nil, 'O’Reilly Media', '1 edition', 'February 4, 2008', ['ISBN-10: 0596516177', 
        'ISBN-13: 978-0596516178'])  
        
        @object5 = Bib.new(['David Chelimsky', 'Dave Astels', 'Bryan Helmkamp', 'Dan North', 
        'Zach Dennis', 'Aslak Hellesoy'], 'The RSpec Book: Behaviour Driven Development with 
        RSpec, Cucumber, and Friends', '(The Facets of Ruby)', 'Pragmatic Bookshelf',
        '1 edition', '(December 25, 2010)', ['ISBN-10: 1934356379', 'ISBN-13: 978-1934356371'])
        
        @object6 = Bib.new('Richard E. Silverman', 'Git Pocket Guide', nil, 'O’Reilly Media', 
        '1 edition', '(August 2, 2013)', ['ISBN-10: 1449325866', 'ISBN-13: 978-1449325862'])
        
        @L= LinkedList.new @object2 #Creamos primero el nodo
        @L.add(@object3) #Añadimos un nodo
    end
    
    describe "Con la estructura node se puede:" do
        
        it "Crear nodo" do
            @L.head.should_not eq nil
        end
        it "Obtener valor del nodo" do
            @L.head.value.to_s.should eq @object2.to_s
        end
        it "Apuntar al siguiente nodo" do
            @L.head.next.should eq nil
        end
    end
    
    describe "Con la clase linkedList se puede:" do
        it "Acceder al primer valor" do
            @L.head.value.should eq @object2
        end
        it "Aceder al último elemento" do
            @L.end.value.should eq @object3
        end
        it "Insertar más de un elemento" do
            @L.add(@object6)
        end
    end
end