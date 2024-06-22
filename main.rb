# frozen_string_literal: true

require('colorize')
require_relative('lib/linked_list')

# Use LinkedList 
linked_list = LinkedList.new
linked_list.append(10)
linked_list.append(20)
linked_list.prepend(30)

puts linked_list.size
puts linked_list.to_s
