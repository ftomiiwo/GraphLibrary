require_relative '../lib/GLT'
require 'rgl/adjacency'
require 'rgl/dot'
require 'colorize'


puts "----------------------------------------------------------------------------------------------------------------------".green
puts "----------------------------------------------------------------------------------------------------------------------".green
puts "                                                                                                                      ".green
puts "******************************************        This is Graph Library      *****************************************".red
puts "----------------------------------------------------------------------------------------------------------------------".green
puts "                                                                                                                      ".yellow
puts "***********************************  Implementation is in Ruby Programming Language  *********************************".red
puts "                                                                                                                      ".blue
puts "                                                                                                                      ".blue
puts "************************************   This Library can perform two major functions  *********************************".red
puts "                                                                                                                      ".blue
puts "********* 1. Breadth First Search (BFS) Graph Traversal **************************************************************".yellow
puts "                                                                                                                      ".blue
puts "********* 2. Depth First Search (DFS) Graph Traversal  ***************************************************************".yellow
puts "                                                                                                                      ".blue
puts "----------------------------------------------------------------------------------------------------------------------".green
puts "--------- Enter 1 or 2 for your preferred option ---------------------------------------------------------------------".blue
puts "----------------------------------------------------------------------------------------------------------------------".green



option = gets.chomp
# puts option.class
if option == "1"
  print 1
elsif option == "2"
  print "b"
end
    


=begin
  
rescue Exception => e
  
end
if option == "1"
  p GraphLibrary::Traverse.bfs(graph, 0)

puts "Please Enter 1 or 2 for BFS or DFS respectively" if option == "1" || "2"



  case option
  when '1'
    puts "Where do you want the Traversal to start from?"
    start = gets.chomp
    p GraphLibrary::Traverse.bfs(graph, 0)



  graph = { 0 => [1,5], 1=> [0,2,3], 2=> [1,4,5], 3=> [1,2,5], 4=> [2,3,6], 5=> [0,3,4,6] } 
  # graph = { 0 => [1,5], 1=> [0,2,3], 2=> [1,4,5], 3=> [1,2,5], 4=> [2,3,6], 5=> [0,3,4,6] } 
  graph1 = {'A' => ['B','C'], 'B'=> ['D','E'], 'C'=> ['D','E'], 'D'=> ['E'], 'E'=> ['A']}
  p GraphLibrary::Traverse.bfs(graph, 0)
  p GraphLibrary::Traverse.bfs(graph1, 'A')
  p GraphLibrary::Traverse.dfs(graph, 1)
  p GraphLibrary::Traverse.dfs(graph1, 'A')
  # dg=RGL::DirectedAdjacencyGraph[1, 0, 5, 3, 2, 4, 6]
  # dg=RGL::DirectedAdjacencyGraph[1,2 ,2,3 ,2,4, 4,5, 6,4, 1,6]
  # dg.write_to_graphic_file('jpg')

=end