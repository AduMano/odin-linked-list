# frozen_string_literal: true

require('colorize')
require_relative('lib/linked_list')

# Use LinkedList
linked_list = LinkedList.new

# Append and Prepend
output = "Append(#{'10'.colorize(:yellow)}), "
output += "Append(#{'20'.colorize(:yellow)}), "
output += "Prepend(#{'30'.colorize(:yellow)})\n\n"
puts output

linked_list.append(10)
linked_list.append(20)
linked_list.prepend(30)

# to_s
puts "Nodes: #{linked_list}"

# size
puts "Size: #{linked_list.size.to_s.colorize(:yellow)}"

# head & tail
head = linked_list.head
tail = linked_list.tail

puts "Head: #{head.to_s.colorize(:yellow)} (Value: #{head.data.to_s.colorize(:yellow)})"
puts "Tail: #{tail.to_s.colorize(:yellow)} (Value: #{tail.data.to_s.colorize(:yellow)})"

# at
index = 2
get_value = linked_list.at(index).nil? ? 'nil' : linked_list.at(index)
puts "Index #{index}'s Value: #{get_value.to_s.colorize(:yellow)}"

puts '==================================================================='.colorize(:red)

# pop
puts "Popped Last Value: #{linked_list.pop.data.to_s.colorize(:yellow)}"

## Check Nodes and Size
puts "Nodes: #{linked_list}"
puts "Size: #{linked_list.size.to_s.colorize(:yellow)}" 

## Check Head and Tail
head = linked_list.head
tail = linked_list.tail
puts "Head: #{head.to_s.colorize(:yellow)} (Value: #{head.data.to_s.colorize(:yellow)})"
puts "Tail: #{tail.to_s.colorize(:yellow)} (Value: #{tail.data.to_s.colorize(:yellow)})"

## Check #at()
get_value = linked_list.at(index).nil? ? 'nil' : linked_list.at(index)
puts "Index #{index}'s Value: #{get_value.to_s.colorize(:yellow)}"

puts '==================================================================='.colorize(:red)

# contains?
data = 10
value = linked_list.contains?(data)
puts "Nodes: #{linked_list}"
puts "Contains value #{data.to_s.colorize(:yellow)}: #{value.to_s.colorize(:yellow)}"

# find
value = 10
find_unknown = linked_list.find(20).nil? ? 'nil' : linked_list.find(20)
puts "Find #{value.to_s.colorize(:yellow)}'s index : #{linked_list.find(value).to_s.colorize(:yellow)}"
puts "Find #{20.to_s.colorize(:yellow)}'s index : #{find_unknown.to_s.colorize(:yellow)}"

puts '==================================================================='.colorize(:red)

# insert_at
puts "Insert #{20.to_s.colorize(:yellow)} at index 0"
linked_list.insert_at(20, 0)
puts "Insert #{50.to_s.colorize(:yellow)} at index 1"
linked_list.insert_at(50, 1)
puts "Insert #{100.to_s.colorize(:yellow)} at index 100"
linked_list.insert_at(100, 100)

## Check Nodes and Size
puts "Nodes: #{linked_list}"
puts "Size: #{linked_list.size.to_s.colorize(:yellow)}"

## Check Head and Tail
head = linked_list.head
tail = linked_list.tail
puts "Head: #{head.to_s.colorize(:yellow)} (Value: #{head.data.to_s.colorize(:yellow)})"
puts "Tail: #{tail.to_s.colorize(:yellow)} (Value: #{tail.data.to_s.colorize(:yellow)})"

puts '==================================================================='.colorize(:red)

## Check Nodes
puts "Nodes: #{linked_list}\n\n"

# remove_at
puts "Remove at index #{0.to_s.colorize(:yellow)}"
linked_list.remove_at(0)

## Check Nodes and Size
puts "Nodes: #{linked_list}"
puts "Size: #{linked_list.size.to_s.colorize(:yellow)}\n\n"

puts "Remove at index #{2.to_s.colorize(:yellow)}"
linked_list.remove_at(2)

## Check Nodes and Size
puts "Nodes: #{linked_list}"
puts "Size: #{linked_list.size.to_s.colorize(:yellow)}\n\n"

## Check Head and Tail
head = linked_list.head
tail = linked_list.tail
puts "Head: #{head.to_s.colorize(:yellow)} (Value: #{head.data.to_s.colorize(:yellow)})"
puts "Tail: #{tail.to_s.colorize(:yellow)} (Value: #{tail.data.to_s.colorize(:yellow)})"
