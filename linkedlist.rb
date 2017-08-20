require_relative "node.rb"

class LinkedList
	attr_accessor :head, :tail

	def initialize
		@head = nil
		@tail = nil
	end

	def append(data)
		if @head == nil
			@head = Node.new(data)
			@tail = @head
		else
			@tail.next_node = Node.new(data)
			@tail = @tail.next_node
		end
	end

	def prepend(data)
		if @head == nil
			@head = Node.new(data)
			@tail = @head
		else
			pointer = @head
			@head = Node.new(data, pointer)
		end
	end

	def size
		sum = 0
		pointer = @head
		until pointer == nil
			sum += 1
			pointer = pointer.next_node
		end
		sum
	end

	def at(index)
		i = 0
		pointer = @head
		until i == index 
			return if pointer.next_node == nil
			pointer = pointer.next_node
			i += 1
		end
		pointer
	end

	def pop
		pointer = @head
		until pointer.next_node == @tail
			pointer = pointer.next_node
		end
		pointer.next_node = nil
		@tail = pointer
	end

	def contains?(value)
		pointer = @head
		until pointer == nil
			return true if pointer.value == value
			pointer = pointer.next_node
		end
		false
	end

	def find(data)
		i = 0
		pointer = @head
		until pointer == nil
			return i if pointer.value == data
			i += 1
			pointer = pointer.next_node
		end
		nil
	end

	def to_s
		pointer = @head
		until pointer == nil
			print "( #{pointer.value} ) -> "
			pointer = pointer.next_node
		end
		print "nil\n"
	end

	def insert_at(data, index)
		i = 0
		pointer = @head
		until i == (index - 1)
			i += 1
			pointer = pointer.next_node
		end
		if pointer.next_node != nil
			pointer.next_node = Node.new(data, pointer.next_node)
		else
			pointer.next_node = Node.new(data)
			@tail = pointer.next_node
		end
	end

	def remove_at(index)
		pointer = @head
		i = 0
		until i == (index - 1)
			pointer = pointer.next_node
			i += 1
		end
		@tail = pointer if pointer.next_node == @tail
		pointer.next_node = (pointer.next_node.next_node == nil ? nil : pointer.next_node.next_node)
	end
end

=begin
test = LinkedList.new
test.append("A")
test.prepend("B")
test.append("C")
test.prepend("D")
test.prepend("J")
puts test.tail.value
test.pop
test.pop
puts test.size
puts test.head.value
puts test.tail.value
test.to_s
puts test.at(2).value
puts test.contains?("B")
puts test.contains?("C")
puts test.find("C")
puts test.find("B")
test.remove_at(2)
test.to_s
test.insert_at("F", 1)
test.to_s
=end