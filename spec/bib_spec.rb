require 'spec_helper'
require 'bib/bib_cod'

describe Bib do
    
    before :each do
        @b1 = Bib.new("Ricky Seawton", "Ruby Instances", nil, "Santillanic", "1 edition", "17 July, 2009", "323")
        @b2 = Bib.new("Aba Meawen", "Invented Title", nil, "Paraninfo", "1 edition", "17 July, 2009", "5874528")
    end
    
    it "Las referencias no son iguales" do
      expect(@b1 == @b2).to eq(false)
    end
    
end