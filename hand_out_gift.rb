def hand_out_gift(name)
  @names ||= []
  raise if @names.include? name
  @names << name
end