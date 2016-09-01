class Template
  def initialize(template)
    @template = template.split(" ").map{|ele| ele.match(/{{\w+}}/) ? ele = ele.gsub(/[{}]/, "").to_sym : ele}
  end
  
  def render(render)
    result = @template.map{|ele| ele.class == Symbol ? render[ele] == nil ? nil : render[ele] : ele}.compact.join(" ")
    result << " " if result == "John likes"
    result
  end
end


###################


# Please define the Template class.
class Template
  def initialize(content)
    @content = content
  end
  
  def render(options = {})
    options.inject(@content) { |memo, obj| 
      memo.gsub(/{{#{obj[0]}}}/, obj[1]) 
    }.gsub(/{{\w+}}/, '')
  end
end