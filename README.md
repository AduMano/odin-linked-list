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
