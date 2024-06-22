# frozen_string_literal: true

require_relative('node')

# Linked List Class
# Iterative Approach (They say that ruby has stack limit when recursion dwelves too deep)
# Recursive Approach (are the ones that has been implemented as available method)
class LinkedList
  attr_accessor :head
  attr_reader :size

  def initialize
    @head = nil
    @size = 0
  end

  # Iterative Approach
  # def append(data)
  #   new_node = Node.new(data)
  #   @size += 1

  #   # New Node to Head if theres no Node yet
  #   return @head = new_node if @head.nil?

  #   # Else if theres a node, I iterate to get the last node
  #   current = @head
  #   current = current.link while current.link

  #   # Add a new Node
  #   current.link = new_node
  #   true
  # end

  # Recursive Approach
  def append(data, new_node = Node.new(data), current = @head)
    current.nil? ? @head = new_node : tail.link = new_node

    @size += 1
    true
  end

  def prepend(data)
    @head = Node.new(data, @head)
    @size += 1
    true
  end

  # Iterative Approach
  # def tail
  #   current = @head
  #   current = current.link while current.link
  #   current
  # end

  # Recursive Approach
  def tail(current = @head)
    return tail(current.link) unless current.link.nil?

    current
  end

  # Iterative Approach
  # def at(index)
  #   return nil if (index + 1) > @size
  #
  #   accumulator = 0
  #   current = @head

  #   while current
  #     return current if accumulator.eql?(index)

  #     current = current.link
  #     accumulator += 1
  #   end
  # end

  # Recursive Approach
  def at(index, current = @head, accumulator = 0)
    return current if index == accumulator
    return tail if (index + 1) == @size
    return nil if (index + 1) > @size

    at(index, current.link, accumulator + 1)
  end

  # Iterative Approach
  # def pop
  #   # Get to the last node (not the pointer)
  #   last_node = tail
  #   current = @head

  #   while current.link
  #     break if current.link.eql?(last_node)

  #     current = current.link
  #   end

  #   disposed_node = current.link
  #   current.link = nil
  #   @size -= 1
  #   disposed_node
  # end

  # Recursive Approach
  def pop(last_node = tail, current = @head)
    if current.link.eql?(last_node)
      disposed_node = current.link
      current.link = nil
      @size -= 1
      disposed_node
    else
      pop(last_node, current.link)
    end
  end

  # Iterative Approach
  # def contains?(data)
  #   result = false
  #   current = @head

  #   while current
  #     return true if current.data.eql?(data)

  #     current = current.link
  #   end

  #   result
  # end

  # Recursive Approach
  def contains?(data)
    find(data) ? true : false
  end

  # Iterative Approach
  # def find(data)
  #   current = @head
  #   index = 0

  #   while current.link
  #     break if current.data.eql?(data)

  #     index += 1
  #     current = current.link

  #     return nil if current.link.nil? && !current.data.eql?(data)
  #   end

  #   index
  # end

  # Recursive Approach
  def find(data, index = 0, current = @head)
    return index if current.data.eql?(data)
    return nil if current.link.nil?

    find(data, index + 1, current.link)
  end

  # Iterative Approach
  # def to_s
  #   current = @head
  #   output = ''

  #   while current
  #     tail = "(#{current.data}) -> nil"
  #     node = "(#{current.data}) -> "

  #     output += current.link.to_s.eql?('') ? tail : node

  #     current = current.link
  #   end

  #   output
  # end

  # Recursion Approach
  def to_s(current = @head, output = '')
    return output << 'nil' if current.nil?

    output += "(#{current.data}) -> "
    to_s(current.link, output)
  end

  # Iterative Approach
  # def insert_at(value, index)  rubocop:disable Metrics/MethodLength
  #   accumulator = 0
  #   current = @head

  #   return prepend(value) if index.eql?(0)

  #   return false if (index + 1) > (@size)

  #   while current.link
  #     accumulator += 1
  #     next_node = current.link

  #     if index.eql?(accumulator)
  #       current.link = Node.new(value, next_node)
  #       @size += 1
  #       return
  #     end

  #     current = next_node
  #   end
  # end

  # Recursive Approach
  def insert_at(value, index, accumulator = 0, current = @head)
    return prepend(value) if index.zero?
    return false if (index + 1) > @size

    if index.eql?(accumulator + 1)
      current.link = Node.new(value, current.link)
      @size += 1
      true
    else
      insert_at(value, index, accumulator + 1, current.link)
    end
  end

  # Iterative Approach
  # def remove_at(index) rubocop:disable Metrics/MethodLength
  #   accumulator = 0
  #   current = @head

  #   if index.eql?(0)
  #     disposed_node = current
  #     next_node = current.link
  #     @head = next_node
  #     @size -= 1

  #     return disposed_node
  #   end

  #   return false if (index + 1) > (@size)

  #   while current.link
  #     accumulator += 1
  #     disposed_node = current.link

  #     if accumulator.eql?(index)
  #       current.link = disposed_node.link
  #       @size -= 1
  #       return disposed_node
  #     end

  #     current = current.link
  #   end
  # end

  # Recursive Approach
  def remove_at(index, accumulator = 0, current = @head) # rubocop:disable Metrics/MethodLength
    return false if (index + 1) > @size

    if index.eql?(0)
      @head = current.link
      @size -= 1
      return true
    elsif index.eql?(accumulator + 1)
      current.link = current.link.link
      @size -= 1
      return true
    end

    remove_at(index, accumulator + 1, current.link)
  end
end
