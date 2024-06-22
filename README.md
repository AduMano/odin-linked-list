# LINKED LIST - RUBY BASICS | THE ODIN PROJECT

## Structure of a linked list

A linked list is a linear collection of data elements called nodes that “point” to the next node by means of a pointer.

Each node holds a single element of data and a link or pointer to the next node in the list.

A head node is the first node in the list, a tail node is the last node in the list. Below is a basic representation of a linked list:

> ```[ NODE(head) ] -> [ NODE ] -> [ NODE(tail) ] -> nil```

For a more thorough explanation, use these resources:

  > Linked Lists in Plain English
  > What’s a Linked List, Anyway?
  > Linked Lists, Ruby’s Missing Data Structure
  > A more verbose explanation with plenty of diagrams


## Assignment

You will need two classes:

  > LinkedList class, which will represent the full list.
  
  > Node class, containing a #value method and a link to the #next_node, set both as nil by default.

Build the following methods in your linked list class:
  ```
    #append(value) adds a new node containing value to the end of the list
    #prepend(value) adds a new node containing value to the start of the list
    #size returns the total number of nodes in the list
    #head returns the first node in the list
    #tail returns the last node in the list
    #at(index) returns the node at the given index
    #pop removes the last element from the list
    #contains?(value) returns true if the passed in value is in the list and otherwise returns false.
    #find(value) returns the index of the node containing value, or nil if not found.
    #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  ```

### Extra credit

    #insert_at(value, index) that inserts a new node with the provided value at the given index.
    #remove_at(index) that removes the node at the given index.

Extra Credit Tip: When you insert or remove a node, consider how it will affect the existing nodes. Some of the nodes will need their #next_node link updated.


## TEST CASE
**OUTPUT**
```
Append(10), Append(20), Prepend(30)

Nodes: (30) -> (10) -> (20) -> nil
Size: 3
Head: #<Node:0x000075812f9c5100> (Value: 30)
Tail: #<Node:0x000075812f990068> (Value: 20)
Index 2's Value: 20
===================================================================
Popped Last Value: 20
Nodes: (30) -> (10) -> nil
Size: 2
Head: #<Node:0x000075812f9c5100> (Value: 30)
Tail: #<Node:0x000075812f990310> (Value: 10)
Index 2's Value: nil
===================================================================
Nodes: (30) -> (10) -> nil
Contains value 10: true
Find 10's index : 1
Find 20's index : nil
===================================================================
Insert 20 at index 0
Insert 50 at index 1
Insert 100 at index 100
Nodes: (20) -> (50) -> (30) -> (10) -> nil
Size: 4
Head: #<Node:0x0000758115dadb60> (Value: 20)
Tail: #<Node:0x000075812f990310> (Value: 10)
===================================================================
Nodes: (20) -> (50) -> (30) -> (10) -> nil

Remove at index 0
Nodes: (50) -> (30) -> (10) -> nil
Size: 3

Remove at index 2
Nodes: (50) -> (30) -> nil
Size: 2

Head: #<Node:0x0000758115dad908> (Value: 50)
Tail: #<Node:0x000075812f9c5100> (Value: 30)
```

**CODE (IN MAIN.RB)**
```ruby
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
```