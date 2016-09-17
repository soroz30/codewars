def generator(*args)
  return [] if args[2] == 0
  args.map!.with_index {|i,index| index < 2 ? i = -i : i} if args[0] > args[1]
  (args[0]..args[1]).step(args[2]).to_a.sort.map {|i| i.abs}
end

##############

def generator(from, to, step)
  return [] if step == 0
  
  step = -step if from > to
  from.step(to, step).to_a
end 

