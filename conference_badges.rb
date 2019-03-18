require 'pry'

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(names_array)
  names_array.map {|i| "Hello, my name is #{i}."}
end

def assign_rooms(names_array)
  assignment_array = Array.new
  names_array.each_with_index {|item, index| assignment_array.push "Hello, #{item}! You'll be assigned to room #{index + 1}!"}
  return assignment_array
end


def printer(names_array)
  batch_badge_creator(names_array).each do |i|
    puts i
  end
  assign_rooms(names_array).each do |item|
    binding.pry
    puts item
  end
end
