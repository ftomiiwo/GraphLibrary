require 'rgl/adjacency'
require 'rgl/dot'
require 'colorize'

module GraphLibrary

  class Traverse

    attr_accessor :graph
    attr_accessor :start

    def initialize (graph, start)
      @graph = graph
      @start = start
    end

    def self.dfs(graph, start, path = [])
      path = path + [start]
        if graph[start]
          graph[start].each do |node|
            unless path.include? node
              path = dfs(graph, node, path)
            end
          end
      end
      path
    end
    
    def self.bfs(graph, start, path = [])
      queue = [start]
      until queue.empty?
        vertex = queue.shift
        unless path.include? vertex
          path = path + [vertex]
          if graph[vertex]
            queue = queue+ graph[vertex]
          end
        end
      end
      path
    end
  end
end

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