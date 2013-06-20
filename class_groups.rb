puts "How many students per group?"
group_size = gets.chomp.to_i

students = ["Alan Appelstein", "Alice Mottola", "Alina Guzman", "Andrew Silbersmith", "Anuj Jhunjhunwala", "Ben Israeli", "Beryl Schragger", "Chris Clearfield", "Christine Coulter", "Christopher Huyett", "Christopher Wright", "Corbin Sykes", "Eleyna Whittingham", "Eric Gong", "Jamal Powell", "Jason Darcy", "Kevon Cheung", "Mike Mayer", "Mike Vanger", "Nick Lombardi", "Peter Lai", "Phillip Lamplugh", "Teddy Cleveland", "Thomas Yu", "Tim Blonski", "Tom Brennan", "Tricia Dougals", "Wesley Carr", "Zachariah Reitano"]
students.shuffle!

number_of_groups = students.length / group_size

number_of_groups.times do |x|
  puts "Group Number #{x+1}"
  puts students.pop(group_size).join(', ')
end
 if students.any?
  puts ", #{students.join(', ')} "
 end