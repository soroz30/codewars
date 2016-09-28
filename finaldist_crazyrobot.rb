def finaldist_crazyrobot(moves, init_pos)
    pos_change = [0, 0]
    moves.each do |move|
      case move[0]
      when "R" then pos_change[0] += move[1]
      when "L" then pos_change[0] -= move[1]
      when "U" then pos_change[1] += move[1]
      when "D" then pos_change[1] -= move[1]
      end
    end
    Math.hypot(pos_change[0], pos_change[1])
end

   init_pos = [20, 18]
   moves = [['R', 32], ['D', 16], ['U', 31], ['L', 26], ['D', 14],['U', 4], ['R', 5], ['L', 16]]

finaldist_crazyrobot(moves, init_pos)