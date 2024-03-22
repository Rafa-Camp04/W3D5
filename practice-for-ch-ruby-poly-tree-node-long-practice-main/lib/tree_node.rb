require 'byebug'

class PolyTreeNode

    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        @parent = node
        debugger
        if node != nil && !node.children.include?(self)
            node.children << self
        end

    end



end

# node1 = PolyTreeNode.new('root')
# node2 = PolyTreeNode.new('child1')
# node3 = PolyTreeNode.new('child2')

# node2.parent = nil
