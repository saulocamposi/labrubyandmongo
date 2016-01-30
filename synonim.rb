synonim = { "a" => "valueone" , "b" => "valeutwo" , "c" => "valuethree"}

keys = synonim.keys

puts keys

class Synonym

  def searchdictionarysynonym (chave)

    synonym = {"reu" => "executado" , "advogado" => "advogado"}
    keys = synonym.keys
    puts "#{keys}"
    valuesynonym = "null value"

    keys.each do |key|
        if key == chave
          valuesynonym = synonym[key]
        end
    end
    return valuesynonym
  end

end

chave = "reu"

synonim = Synonym.new

puts synonim.searchdictionarysynonym(chave)
