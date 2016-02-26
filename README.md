Graph Library (Implementation of Ruby Graph Library)
Visualization is done with RGL

This documentation focus on two major algorithms implementation in Ruby. The main design goals are:

i.  Breadth First Search (GraphLibrary::Traverse.bfs)
11. Depth First Search (GraphLibrary::Traverse.dfs)

Example irb session
--------------------------------------

irb> require_relative 'GLT'
irb> GraphLibrary::Traverse.dfs(graph, start_node)
irb> GraphLibrary::Traverse.bfs(graph, start_not)
