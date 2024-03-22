class PolyTreeNode
   
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        @parent = node
        node.children << self if !node.children.include?(self)
    end

end