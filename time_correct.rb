def time_correct(t)
  return '' if t == ''
  return unless /\d\d:\d\d:\d\d/ =~ t
  d = t.split(':').map(&:to_i)
  2.downto(0) do |i|
    el = d[i]
    unless i == 0
      d[i] = el%60
      d[i-1] += el/60
    else
      d[i] = d[i]%24
    end
  end
  p d.map(&:to_s).map {|i| i.rjust(2, '0')}.join(':')
end

time_correct("52:01:01")