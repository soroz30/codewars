def sort_reindeer(reindeer_names)
  reindeer_names.sort {|x,y| x.match(/^\w+\s(\w+)/)[1] <=> y.match(/^\w+\s(\w+)/)[1]}
end

#############

def sort_reindeer reindeer_names
  reindeer_names.sort_by { |n| n.split.last }
end