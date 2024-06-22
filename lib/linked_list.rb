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
    
    # New Node to Head if theres no Node yet
    return @head = new_node if @head == nil
    
    # Else if theres a node, I iterate to get the last node
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
    @head
  end

  def tail
    current = @head

    while (current.link)
      current = current.link
    end

    current
  end

  def at(data)
    current = @head
    index = 0

    while (current.link)
      break if current.data.eql?(data)

      index += 1
      current = current.link
      
      return nil if current.link == nil && !current.data.eql?(data)
    end

    index
  end

  def pop

  end

  def contains?()

  end

  def find()

  end

  def to_s
    current = @head
    output = ''

    while (current)
      tail = "(#{current.data}) -> nil".colorize(:yellow)
      node = "(#{current.data}) -> ".colorize(:yellow)

      output += current.link.to_s.eql?('') ? tail : node

      current = current.link
    end

    output
  end

  def insert_at()

  end

  def remove_at()

  end
end
