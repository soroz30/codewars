def league_calculate(team1, team2, result)
  case result
  when "draw"
    $league_table.assoc(team1)[1] += 1
    $league_table.assoc(team2)[1] += 1
  when "win"
    $league_table.assoc(team1)[1] += 3
  end
  
  $league_table.sort_by! { |team, points| [-points, team] }
end