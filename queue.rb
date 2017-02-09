require_relative './singly_linked_list.rb'

class Queue

  attr_reader :front, :contents

  def initialize(front=nil)
    @contents = SinglyLinkedList.new front
    @front = @contents.head
  end

  def enqueue element
    @contents.insert_at_end element
    @front = @contents.head
  end

  def dequeue
    value = @font
    @contents.remove_from_start
    @front = @contents.head
    value
  end

  def inspect
    @contents.inspect
  end

  def empty?
    @contents.empty?
  end

end

q = Queue.new(5)
p q.inspect
q.enqueue(2)
p q.inspect
p 'is it empty?'
p q.empty?
q.enqueue(1)
p q.inspect
p q.dequeue
p q.dequeue
p q.dequeue
p q.dequeue
p q.inspect
p 'is it empty?'
p q.empty?
