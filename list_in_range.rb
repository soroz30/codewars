def list_in_range(hash, range)
  string = ""
  hash.sort {|a,b| a[1]<=>b[1]}.each {|key, value| string += "#{key} (#{value}), " if range.cover?(value)}
  string[0..-3]
end


#######

def list_in_range(hash, range)
  hash
    .select { |k, v| range.include?(v) }
    .sort_by { |k, v| v }
    .map { |k, v| "#{k} (#{v})" }
    .join(", ")
end