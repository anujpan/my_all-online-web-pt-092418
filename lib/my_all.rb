require 'pry'

collection = [1, 2, 3]

def my_all?(collection)
  i = 0
  
  block_return_values = []
  
  while i < collection.length
    yield(collection[i])
    i += 1
  end
  
  collection
end

my_all?(collection) {|i| i < 3}