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
