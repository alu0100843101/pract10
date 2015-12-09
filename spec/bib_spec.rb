require 'spec_helper'
require 'bib/bib_cod'

describe Cita do
    
    before :each do
        @l = Libro.new(['Jesús', 'José'], ['Thrashorras', 'Luis'], 'Configuración de instalaciones eléctricas', nil, 'Paraninfo', '2013 edition', '2013', '9788497329354')
        @r = Revista.new(['Felipe'], ['Clavo'], 'Decoracion de hogar', nil, 'Hogares', '1 edition', 2015, 9857425)
        @p = Periodico.new(['Maria'], ['Darias'], 'Noticias', nil, 'Diario de avisos', '10 edition', 2013, 15)
        @e = Electronico.new(['Alexis'], ['Ramon'], 'Programa en Java', nil, 'Programming', '17 edition', 2015, 'www.urldelbook.com')
        
        @c1 = Cita.new(@l)
        @c2 = Cita.new(@r)
        @c3 = Cita.new(@p)
        @c4 = Cita.new(@e)

        @citas = LinkedList.new()
    end

    it "Texto Formateado con las condiciones establecidas" do
            expect(@c1.to_s).to eq('Autor, T. J. & Autor, L. J. (2013).  Titulo del libro: Configuración de instalaciones eléctricas (2013 edition).  Lugar de publicacion: Paraninfo.  ')
            expect(@c2.to_s).to eq('Autor, C. F. (2015).  Titulo de la revista: Decoracion de hogar (1 edition).  Lugar de publicacion: Hogares.  ')
            expect(@c3.to_s).to eq('Autor, D. M. (2013).  Titulo del articulo: Noticias (10 edition).  Columnas: 15.  Lugar de publicacion: Diario de avisos.  ')
            expect(@c4.to_s).to eq('Autor, R. A. (2015).  Titulo: Programa en Java (17 edition).  Lugar de publicacion: Programming.  Disponible en: www.urldelbook.com  ')
    end
end