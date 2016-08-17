def pitch_class note
  return nil unless note =~/^[CDEFGAB][#b]?$/
  pitch = 'C D EF G A B'.index(note[0])
  pitch = pitch+11 if note[1] == 'b'
  pitch = pitch+1 if note[1] == '#'
  pitch % 12
end