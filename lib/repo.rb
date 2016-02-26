 def self.make_graph path
      directed_graph = RGL::DirectedAdjacencyGraph path
      directed_graph.write_to_graphic_file('jpg')
    end

    def self.check_type arg
      if arg.class == Fixnum
        arg
      else
        arg = arg.to_sym
      end
    end

    def self.dfs(
      graph, 
      start, 
      path = []
      )
      path = path + [start]
      start = check_type start
      if graph[start]
        graph[start].each do |node|
          unless path.include? node
            path = dfs(
              graph,
              node,
              path
              )
          end
        end
      end
      path 
      #Traverse.make_graph path
    end
       
    def self.bfs(
      graph,
      start,
      path = []
      )
      queue = [start]
      until queue.empty?
        vertex = queue.shift
        unless path.include? vertex
          path = path + [vertex]
          vertex = check_type vertex 
          if graph[vertex]
            queue = queue + graph[vertex]
          end
        end
      end
      path
     # Traverse.make_graph path
  end