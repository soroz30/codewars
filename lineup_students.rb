def lineup_students(students)
  lengths = students.split(" ").map {|x| x.length}.uniq.max
  array = Array.new(lengths+1).zip
  students.split(" ").each do |student|
    array[student.length] << student
  end
  array.map {|ele| ele.compact}.reverse.map {|ele| ele.sort.reverse}.flatten
end

###############3

def lineup_students(students)
  students.split.sort_by { |name| [name.length, name] }.reverse
end

def lineup_students(students)
  students = students.split
  students.sort do |a,b| 
    if b.length == a.length
      b <=> a
    else
      b.length <=> a.length
    end
  end
end