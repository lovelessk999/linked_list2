#------------------Class Linked List------------------#

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

#-----------------Challenge-----------------#

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    
    def push(value)
        @data = LinkedListNode.new(value, @data)
    end

    def pop
       
    end

end

# ---------------Reverse List Function-------------- #

# def reverse_list(list)
  
#     stack = Stack.new

#     while list
        
#         stack.push(list.value)
#         list = list.next_node
#     end

#     # ADD CODE HERE
#     stack.data
# end

def reverse_list(list, previous=nil)
    
    if !list
      
      previous

    else

      current_head = list.next_node
      list.next_node = previous
      reverse_list(current_head, list)

    end

  end

#------------------Print Function-------------------#

def print_nodes(listnode)

  print "#{listnode.value} --> "

  if listnode.next_node.nil?

    print "nil\n"

    return

  else

    print_nodes(listnode.next_node)

  end

end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_nodes(node3)

puts "-------"

revlist = reverse_list(node3)

print_nodes(revlist)

# node3.print_values(node3)
# puts '------------------------'
# node3.print_values(node3.reverse_list(node3))