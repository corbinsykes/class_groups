n_line = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
l_line = ["8th", "6th", "Union Square", "3rd", "1st"]
six_line = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]

mta = {}

mta[:n] = n_line
mta[:l] = l_line
mta[:six] = six_line

first_stop = "34th"
last_stop = "33rd"
on_line = "n"
off_line = "six"

if on_line == off_line
  # SAME LINE
  first_index = n_line.index(first_stop)
  last_index = n_line.index(last_stop)
  diff = (last_stop - first_stop).abs
  puts diff
else
  # DIFFERENT LINES
  entrance_index = mta[:n].index(first_stop)
  union_first_line_index = mta[:n].index("Union Square")
  first_leg_length = (entrance_index - union_first_line_index).abs

  exit_first_line_index = mta[:six].index(last_stop)
  union_second_line_index = mta[:six].index("Union Square")
  second_leg_length = (exit_first_line_index - union_second_line_index).abs

  diff = first_leg_length + second_leg_length

  puts diff
end

