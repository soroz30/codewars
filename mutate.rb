def mutate (chromosome, p)
    list = (0...chromosome.length).to_a.sample((chromosome.length * p).to_i)
    chromosome.split("").map.with_index {|ele, index| if list.include?(index)
      ele == "0" ? "1" : "0" 
    else
      ele
    end
  }.join("") 
end

##########################


def mutate(chromosome, p)
  chromosome.gsub(/./) { |m| rand < p ? m.tr("01", "10") : m }
end