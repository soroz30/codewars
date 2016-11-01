def decodeMorse(morseCode)
  morseCode.split('   ').map { |i| i.split.map {|c| MORSE_CODE[c]}.join }.join(' ').strip
end