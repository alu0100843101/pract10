require "bib/version"
require "bib/bib_cod"

class LinkedList
		attr_reader  :head, :end
		
		Node = Struct.new :value, :next

		def initialize (bib)
			if bib.instance_of? Bib
				@head = Node.new(bib, nil)
				@end = nil
			end
		end
		
		def add (value) #Se pueden pasar una o varias referencias (Bib).
			if value.instance_of? Bib #Una
				if @head == nil
					@head = Node.new(value, nil)
					@end = nil
				else
					if @end == nil
						@end = Node.new(value, nil)
					else
						aux = @end
						@end = Node.new(value, nil)
						aux.next = @end
					end
				end
			elsif value.instance_of? Array #Varias
				value.each do |i|
					self.add(i) #Paunta al objeto referenciado
				end
			end
		
		end
end