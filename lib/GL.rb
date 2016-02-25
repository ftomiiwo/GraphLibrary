class Traverse
    def self.dfs(graph, start, path = [])
      path = path + [start]
      start = check_type(start)
        if graph[start]
          graph[start].each do |node|
              unless path.include? node
                path = dfs(graph, node, path)
              end
          end
      end
     path
    end
    
    def self.check_type(arg)
        if arg.class == Fixnum
          arg
      else
          arg= arg.to_sym
      end
    end
    
    def self.bfs(graph, start, path = [])
        q = [start]
      until q.empty?
        v = q.shift
        unless path.include? v
            path = path + [v]
           v = check_type(v)
            if graph[v]
                q = q+ graph[v]
            end
        end
        end
        path
    end
end

# graph = { 0 => [1,5], 1=> [0,2,3], 2=> [1,4,5], 3=> [1,2,5], 4=> [2,3,6], 5=> [0,3,4,6] } 
graph = {'A':['B','C'],'B':['D','E'],'C':['D','E'],'D':['E'],'E':['A']}
Traverse.bfs(graph, "A")

Traverse.dfs(graph, "A")
