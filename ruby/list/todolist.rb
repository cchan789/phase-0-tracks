
class TodoList
@list = []

def initialize(array)
 @list = array
end

def get_items
 @list 
end

def add_item(item)
 @list.push(item)
end

def delete_item(item)
 @list.delete(item)
 @list
end

def get_item(int)
 @list[int]
end



end

