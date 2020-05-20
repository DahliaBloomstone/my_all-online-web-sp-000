require 'pry'

def my_all?(collection)
i = 0
block_return_values = []
while i < collection.length
  block_return_values << yield(collection[i]) #yield line. when code is run, it is going to send whatever is passed in as the argument to the block.
  i = i + 1
end

if block_return_values.include?(false)
  false
else
  true
end
end

my_all?([1, 2, 3]) {|i| i < 2} #method called
#when it hits yield(1), it is going to send 1 to the block and evaluate it, and send the return value back to yield.
#my_all?([1, 2, 3]) {|1| 1 < 2} => true 
