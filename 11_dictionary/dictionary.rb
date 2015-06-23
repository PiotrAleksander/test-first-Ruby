class Dictionary
  def entries
    @entries ||= {}
  end

  def add(defs)  
	  if defs.class == Hash #if test ('fish' => 'something')
        defs.each {|name, value| entries[name] = value}
	  else
	    entries[defs] = nil
      end
  end

  def keywords
    @entries.keys.sort
  end

  def include? word
    entries.keys.include? word
  end

  def find partial_word
    result = {}
    entries.each_pair do |key, definition|
      if key =~ /^#{partial_word}/
        result[key] = definition
      end
    end
    result
  end

  def printable
    entries.map do |key_val|
      %Q{[#{key_val.first}] "#{key_val.last}"}
    end.sort.join("\n")
  end
end
