class Array
  def depth
    1 + select { |item| item.is_a?(Array) }.map(&:depth).max.to_i
  end
end


class Array
  def depth
    1 + self
      .select { |el| el.is_a? Array }
      .map { |el| el.depth }
      .max
      .to_i
  end
end

class Array
  def depth
    depth = 1
    if self == self.flatten
      return depth
    else
      until self == self.flatten
        self.flaten(1)
        depth += 1
      end
      return depth
    end
  end
end
