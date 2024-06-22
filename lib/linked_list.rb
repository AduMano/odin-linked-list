# frozen_string_literal: true

require_relative('node')

# Linked List Class
class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
    @size = 0
  end

  def append(data)
    new_node = Node.new(data)
    @size += 1
    
    # New Node to Head
    return @head = new_node if @head == nil
    
    current = @head

    # Get the last node
    while (current.link)
      current = current.link
    end

    # Add a new Node 
    current.link = new_node
  end

  def prepend(data)
    @head = Node.new(data, @head)
    @size += 1
  end

  def size
    @size
  end

  def head

  end

  def tail

  end

  def at()

  end

  def pop

  end

  def contains?()

  end

  def find()

  end

  def to_s
    current = @head

    while (current)
      print current.link.to_s.eql?('') ? "(#{current.data}) -> nil" : "(#{current.data}) -> "

      current = current.link
    end
  end

  def insert_at()

  end

  def remove_at()

  end
end
