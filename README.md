

                              Graph Library (Implementation of Ruby Graph Library)

                        Visualization is done with Ruby Graph Library [RGL] DOT Library

This documentation focus on two major algorithms implementation in Ruby. The main design goals are:

i.  Breadth First Search (GraphLibrary::Traverse.bfs)
11. Depth First Search (GraphLibrary::Traverse.dfs)


i. Depth-first search (DFS) is an algorithm for traversing or searching tree or graph data structures.
   One starts at the root (selecting some arbitrary node as the root in the case of a graph) and 
   explores as far as possible along each branch before backtracking.

ii. Breadth-first search (BFS) is an algorithm for traversing or searching tree or graph data structures. 
    It starts at the tree root (or some arbitrary node of a graph, sometimes referred to as a 
    'search key'[1]) and explores the neighbor nodes first, before moving to the next level neighbors.



--      The Ruby Graph Library 


    The design of the library is much influenced by the Boost Graph Library (BGL) which is written in C++.
    Refer to http://www.boost.org/libs/graph/doc for further links and documentation on graph data 
    structures and algorithms and the design rationales of BGL.

    A comprehensive summary of graph terminology can be found in the graph section of the Dictionary of 
    Algorithms and Data Structures at http://www.nist.gov/dads/HTML/graph.html or Wikipedia.

    One of the major functions in the Ruby Graph Library Module is the DOT function , it can be referenced 
    from a Ruby cody by Importing the rgl Module (using require 'rgl/dot'). 

--      Major Functions In The Graph Library Project 

    i.  GraphLibrary::Traverse.dfs_traverse(graph, start_node)

        It takes the two Arguments namely, graph which represents the Graph that is to be traverse and
         returns the order of the Depth First Search to the console, and start_node which indicates where 
         the searching in the process is to begin


    ii. GraphLibrary::Traverse.dfs_display( graph, start_node)

        It takes primarily two arguments, one will be used while the other will not be used, the first 
        one is the graph that is to be traversed and the second is the starting Node from which the 
        process will begin. This function makes use of the RGL DOT function to create a visualization of
         the Graph that has been traversed and stores the JPEG format of the process in the Root file of 
         the Project Directory

    iii.GraphLibrary::Traverse.dfs_traverse(graph, start_node)

        It takes the two Arguments namely, graph which represents the Graph that is to be traverse and
        returns the order of the Breadth First Search to the console, and start_node which indicates where 
        the searching in the process is to begin


    iv. GraphLibrary::Traverse.dfs_display( graph, start_node)

        It takes primarily two arguments, one will be used while the other will not be used, the first 
        one is the graph that is to be traversed and the second is the starting Node from which the 
        process will begin. This function makes use of the RGL DOT function to create a visualization of 
        the Graph that has been traversed and stores the JPEG format of the process in the Root file of the 
        Project Directory

