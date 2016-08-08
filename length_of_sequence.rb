def length_of_sequence(arr,n)
  arr.count(n)==2 ? arr.rindex(n)-arr.index(n)+1 : 0
end