module FlameGraphs

using Profile, LeftChildRightSiblingTrees
using Base.StackTraces: StackFrame
using Profile: StackFrameTree
using Colors, FixedPointNumbers, IndirectArrays
using FileIO

# AbstractTree interface for StackFrameTree:
using AbstractTrees
AbstractTrees.children(node::StackFrameTree) = node.down
AbstractTrees.printnode(io::IO, node::StackFrameTree) = print(io, node.frame)

export flamegraph, flamepixels, flametags, FlameColors, StackFrameCategory

include("graph.jl")
include("render.jl")
include("sfcategory.jl")
include("io.jl")

end # module
