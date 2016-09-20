def findWord(query, array_of_strings)
    endarray = []
    array_of_strings.each {|s| endarray.push(s) if s.downcase.include?(query.downcase)}
    endarray == [] ? endarray.push("Empty") : endarray
end
