require 'byebug'

class PolyTreeNode

    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)

        self.parent.children.pop if self.parent != nil
        @parent = node

        if node != nil && !node.children.include?(self)
            node.children << self
        end

    end

    def add_child(child)
        child.parent = self
    end

    def remove_child(child)
        raise "error, node is not a child" if !self.children.include?(child)
        child.parent = nil
    end

    def dfs(target)
        return self if target == self.value

        self.children.each do |ele|
            child = ele.dfs(target)
            if child != nil
                return child
            end
        end

        nil
    end

    def inspect
        "#{@value}"
    end

end
