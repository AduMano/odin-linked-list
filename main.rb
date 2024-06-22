# frozen_string_literal: true

require('colorize')
require_relative('lib/linked_list')

# Use LinkedList 
linked_list = LinkedList.new
linked_list.append(10)
linked_list.append(20)
linked_list.prepend(30)

# size
puts "Size: #{"#{linked_list.size}".colorize(:yellow)}"

# to_s
puts "Nodes: #{linked_list.to_s}" 

# head & tail
head = linked_list.head
tail = linked_list.tail

puts "Head: #{"#{head}".colorize(:yellow)} (Value: #{"#{head.data}".colorize(:yellow)})"
puts "Tail: #{"#{tail}".colorize(:yellow)} (Value: #{"#{tail.data}".colorize(:yellow)})"

# at
data = 100
get_index = linked_list.at(data).eql?(nil) ? 'nil' : linked_list.at(data)
puts "Value #{data} at index: #{"#{get_index}".colorize(:yellow)}"


