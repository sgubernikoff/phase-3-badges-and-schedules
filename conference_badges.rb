require 'pry'
def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator array
    array.map do |a|
        badge_maker(a)
    end
end

def assign_rooms array
    array.map.with_index(1) do |a, index|
            "Hello, #{a}! You'll be assigned to room #{index}!"
        end
end

def printer array
    batch_badge_creator(array).each do |a|
        puts a
    end

    assign_rooms(array).each do |a|
        puts a
    end
end 