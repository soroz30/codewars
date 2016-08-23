def longest_possible(playback)
  seconds_map = songs.map  do |ele| 
    play = ele[:playback].split(':').map(&:to_i)
    seconds = [(play[0]*60), play[1]].inject(:+)
    hash = {:title => ele[:title], :seconds => seconds}
  end
  final =  seconds_map.select {|ele| ele[:seconds] <= playback}.max_by {|ele| ele[:seconds]}
  final == nil ? false : final[:title]
end

######################

def longest_possible(playback)
  song = songs.sort_by { |s| pb_to_int(s[:playback]) }.reverse.find { |s| pb_to_int(s[:playback]) < playback }
  !!song && song[:title]
end

def pb_to_int(playback)
  playback.to_i * 60 + playback[-2..-1].to_i
end