def score_matrix(m)
    return (0...m.length).map{|r| (0...m[r].length).map{|c| m[r][c]*((r+c)%2==0 ? 1 : -1)}.inject(:+)}.inject(:+)
end