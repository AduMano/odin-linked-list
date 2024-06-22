# frozen_string_literal: true

require_relative('node')

# Linked List Class
class LinkedList # rubocop:disable Metrics/ClassLength
  attr_accessor :head
  attr_reader :size

  def initialize
    @head = nil
    @size = 0
  end

  def append(data)
    new_node = Node.new(data)
    @size += 1

    # New Node to Head if theres no Node yet
    return @head = new_node if @head.nil?

    # Else if theres a node, I iterate to get the last node
    current = @head
    current = current.link while current.link

    # Add a new Node
    current.link = new_node
    true
  end

  def prepend(data)
    @head = Node.new(data, @head)
    @size += 1
    true
  end

  def tail
    current = @head

    current = current.link while current.link

    current
  end

  def at(index)
    accumulator = 0
    current = @head

    while current
      return current.data if accumulator.eql?(index)

      current = current.link
      accumulator += 1
    end

    nil
  end

  def pop
    # Get to the last node (not the pointer)
    last_node = tail
    current = @head

    while current.link
      break if current.link.eql?(last_node)

      current = current.link
    end

    disposed_node = current.link
    current.link = nil
    @size -= 1
    disposed_node
  end

  def contains?(data)
    result = false
    current = @head

    while current
      return true if current.data.eql?(data)

      current = current.link
    end

    result
  end

  def find(data)
    current = @head
    index = 0

    while current.link
      break if current.data.eql?(data)

      index += 1
      current = current.link

      return nil if current.link.nil? && !current.data.eql?(data)
    end

    index
  end

  def to_s
    current = @head
    output = ''

    while current
      tail = "(#{current.data}) -> nil".colorize(:yellow)
      node = "(#{current.data}) -> ".colorize(:yellow)

      output += current.link.to_s.eql?('') ? tail : node

      current = current.link
    end

    output
  end

  def insert_at(value, index) # rubocop:disable Metrics/MethodLength
    accumulator = 0
    current = @head

    return prepend(value) if index.eql?(0)

    return false if (index + 1) > (@size)

    while current.link
      accumulator += 1
      next_node = current.link

      if index.eql?(accumulator)
        current.link = Node.new(value, next_node)
        @size += 1
        return
      end

      current = next_node
    end
  end

  def remove_at(index) # rubocop:disable Metrics/MethodLength
    accumulator = 0
    current = @head

    if index.eql?(0)
      disposed_node = current
      next_node = current.link
      @head = next_node
      @size -= 1

      return disposed_node
    end

    return false if (index + 1) > (@size)

    while current.link
      accumulator += 1
      disposed_node = current.link

      if accumulator.eql?(index)
        current.link = disposed_node.link
        @size -= 1
        return disposed_node
      end

      current = current.link
    end
  end
end
