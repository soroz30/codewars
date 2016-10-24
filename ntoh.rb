def ntoh(integer)
  raise "too big!" if integer > 0xffffffff
  [integer].pack('N').unpack('V')[0]
end