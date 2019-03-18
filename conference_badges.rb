require 'pry'

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(names_array)
  names_array.map {|i| "Hello, my name is #{i}."}
end

def assign_rooms(names_array)
  names_array.each_with_index.collect {|item, index| "Hello, #{item}! You'll be assigned to room #{index + 1}!"}
end

def printer(names_array)
  batch_badge_creator(names_array).each do |badge_message|
    puts badge_message
  end
  assign_rooms(names_array).each do |room_assignment|
    puts room_assignment
  end
end
