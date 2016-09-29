synonim = { 'a' => 'valueone', 'b' => 'valeutwo', 'c' => 'valuethree' }

keys = synonim.keys

puts keys

class Synonym
    def searchdictionarysynonym(chave)
        synonym = { 'reu' => 'executado', 'advogado' => 'advogado' }
        keys = synonym.keys
        puts keys.to_s
        valuesynonym = 'null value'

        keys.each do |key|
            valuesynonym = synonym[key] if key == chave
        end
        valuesynonym
    end
end

chave = 'reu'

synonim = Synonym.new

puts synonim.searchdictionarysynonym(chave)
