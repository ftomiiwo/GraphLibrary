class Node
  attr_accessor :value, :left, :right

  def initialize value
    
    @value = value
  end
end
def build_tree(array, *indices)
  array.sort.uniq!
  mid = (array.length-1)/2
  first_element = indices[0]
  last_element = indices[1]

  if !first_element.nil? && first_element > last_element
    return nil 
  end

  root = Node.new(array[mid])
  root.left = build_tree(array[0..mid-1], 0, mid-1)
  root.right = build_tree(array[mid+1..-1], mid+1, array.length-1)

  return root
end

def breadth_first_search(search_value, tree)
  queue = [tree]
  visited = [tree]

  while !queue.empty? 
    current = queue.shift
    visited << current
    left, right = current.left, current.right

    if current.value == search_value
      puts current
      exit
    end

    if !left.nil? && !visited.include?(left)
      if left.value == search_value
        puts left
        exit
      else
        visited << left
        queue << left
      end
    end

    if !right.nil? && !visited.include?(right)
      if right.value == search_value
        puts right
        exit
      else
        visited << right
        queue << right
      end
    end
  end
  puts queue
end

# def depth_first_search(search_value, tree)
#   stack = [tree]
#   visited = [tree]

#   while !stack.empty?
#     current = stack.last
#     left, right = current.left, current.right

#     if current.value == search_value
#       puts current
#       exit
#     elsif !left.nil? && !visited.include?(left)
#       if left.value == search_value
#         puts left
#         exit
#       else
#         visited << left
#         stack << left
#       end
#     elsif !right.nil? && !visited.include?(right)
#       if right.value == search_value
#         puts right
#         exit
#       else
#         visited << right
#         stack << right
#       end
#     else
#       stack.pop
#     end
#   end
#   puts "nil"
# end
binary_tree = build_tree([4,7,2,8,1,1,1,30,22,4,9])
puts binary_tree
# puts breadth_first_search(9, binary_tree)
# puts depth_first_search(7, binary_tree)

# require 'rgl/adjacency'
# class GraphLibrary
#   def depth_first_search (
#     adj_matrix,
#     source_index,
#     end_index
#     )
#     node_stack = [source_index]

#     loop do 
#       curr_node = node_stack.pop
#       return false if curr_node == nil
#       return true if curr_node == end_index

#       children = (0..adj_matrix.length - 1).to_i do |i|
#         adj_matrix[curr_node][i] == 1
#       end

#       node_stack = node_stack + children
#     end 
#   end
 

#   def breadth_first_search (
#     adj_matrix,
#     source_index,
#     end_index
#     )
#     node_queue = [source_index]

#     loop do 
#       curr_node = node_queue.pop

#       return false if curr_node == nil
#       return true if curr_node = end_index
    
#       children = (0..adj_matrix.length - 1).to_a.select do |i|
#         adj_matrix[curr_node][i] == 1
#       end
#       node_queue = children + node_queue
#     end
#   end 
# end 

# require 'GraphLibrary'
# adj_matrix = [
#   [0, 0, 1, 0, 1, 0],
#   [0, 0, 1, 0, 0, 1],
#   [0, 0, 0, 1, 0, 0],
#   [0, 0, 0, 0, 1, 1],
#   [0, 0, 0, 0, 0, 0],
#   [0, 0, 0, 0, 0, 0]
# ]







# def dfs(
#   graph,
#   root
#   )
#   visited = []
#   stack = []
#   stack << root

#   while stack
#     node = stack.pop()
#     if !visited.include? node 
#       visited << node
#       for x in graph[node]
#         if !visited.include? x
#           stack << x
#         end
#       end
#     end
#   end
#   return visited
# end
# graph = {
#   0 => [1,5],
#   1 => [0,2,3],
#   2 => [1,4],
#   3 => [1,4,5],
#   4 => [2,3,5],
#   5 => [0,3,4]
# }
# start = 0
# dfs(graph, start)

# # def dfs(self,graph,root):
# #     visited = []
# #     stack = [root, ]

# #     while stack
# #       node = stack.pop()

# #       if node not in visited:
# #         visited.append(node)
# #         stack.extend([x for x in graph[node] if x not in visited])

# #     return visited


# GL = GraphLibray.
# #graph = RGL::depth_first_search(adj_matrix, 1, 4)
# #GraphLibrary::breadth_first_search(adj_matrix,1,4)
# # p GraphLibrary::depth_first_search(adj_matrix, 0, 4)
# def breadth_first_search (
#   adj_matrix,
#   source_index,
#   end_index
#   )
#   node_queue = [source_index]

#   loop do 
#     curr_node = node_queue.pop

#     return false if curr_node == nil
#     return true if curr_node = end_index

#     children = (0..adj_matrix.length - 1).to_a.select do |i|
#       adj_matrix[curr_node][i] == 1
#     end
#     node_queue = children + node_queue
#   end
# end 
# puts breadth_first_search(adj_matrix, 1, 4)