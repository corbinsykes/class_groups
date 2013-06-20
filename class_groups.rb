#setting group parameters
puts "How many students per group?"
group_size = gets.chomp.to_i

#randomizing the array
students = ["Alan Appelstein", "Alice Mottola", "Alina Guzman", "Andrew Silbersmith", "Anuj Jhunjhunwala", "Ben Israeli", "Beryl Schragger", "Chris Clearfield", "Christine Coulter", "Christopher Huyett", "Christopher Wright", "Corbin Sykes", "Eleyna Whittingham", "Eric Gong", "Jamal Powell", "Jason Darcy", "Kevon Cheung", "Mike Mayer", "Mike Vanger", "Nick Lombardi", "Peter Lai", "Phillip Lamplugh", "Teddy Cleveland", "Thomas Yu", "Tim Blonski", "Tom Brennan", "Tricia Dougals", "Wesley Carr", "Zachariah Reitano"]
students.shuffle!

#determining how many groups there will be
number_of_groups = students.length / group_size

#splitting the array into groups
number_of_groups.times do |x|
  puts "Group Number #{x+1}:"
  puts students.pop(group_size).join(', ')
end

#taking care of the leftover students
 if students.any?
  puts "#{students.join(', ')} "
 end