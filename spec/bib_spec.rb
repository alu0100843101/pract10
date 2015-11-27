require 'spec_helper'
require 'bib/bib_cod'

describe Libro do
    before :all do
        @l = Libro.new('Jesús Thrashorras', 'Configuración de instalaciones léctricas', nil, 'Paraninfo', '2013 edition', '2013', '9788497329354')
    end
       
    it "Es una la instancia de Libro" do
       (@l.instance_of?Libro).should eq(true)
    end
    
    it "Debe responder a un metodo de su clase padre" do
        @l.respond_to?(:autor).should eq(true)
    end
end

describe Revista do
    before :all do
        @r = Revista.new('Felipe', 'Decoracion de hogar', 'Hogares', 5, 'January 1', 2015, 9857425)
    end
    
    it "Es una instancia de Revista" do
       (@r.instance_of?Revista).should eq(true)
    end
    
    it "Debe responder a un metodo de su clase padre" do
        @r.respond_to?(:autor).should eq(true)
    end
end

describe Periodico do
    before :all do
        @p = Periodico.new('Maria', 'Diario de avisos', 'Noticias', 1, 'February 10', 2013, 15)
    end

    it "Es una instancia de Periodico" do
       (@p.instance_of?Periodico).should eq(true)
    end

    it "Debe responder a un metodo de su clase padre" do
        @p.respond_to?(:autor).should eq(true)
    end
end

describe Electronico do
    before :all do
        @e = Electronico.new('Alexis', 'Programa en Java', 'Programming', 3, 'November 17', 2015, 'www.urldelbook.com')
    end

    it "Es una instancia de Electronico" do
       (@e.instance_of?Electronico).should eq(true)
    end

    it "Debe responder a un metodo de su clase padre" do
        @e.respond_to?(:autor).should eq(true)
    end
end

describe LinkedList do
    before :all do
        @L=LinkedList.new()
    end
    
    it "Al inicializar la lista, el inicio es nulo" do
            @L.head.should eq(nil)
    end
    
    it "Al inicializar la lista, el final es nulo" do
        @L.end.should eq(nil)
    end
    
end