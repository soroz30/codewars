def conference_picker(cities_visited, cities_offered)
  cities_offered.find{|i| cities_visited.include?(i) == false} || "No worthwhile conferences this year!"
end

#########

def conference_picker(cities_visited, cities_offered)
  (cities_offered - cities_visited)[0] || "No worthwhile conferences this year!" 
end