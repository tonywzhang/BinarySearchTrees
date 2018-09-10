class BSTNode
  attr_reader :value
  attr_accessor :left, :right, :parent

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
    @parent = nil
  end

  def delete(child)
    @left = nil if @left == child
    @right = nil if @right == child
  end

  def empty?
    @left == nil && @right == nil
  end

  def insert(child)
    if @left == nil && child.value <= value
      @left = child
    elsif @right == nil && child.value > value
      @right = child
    end
  end

end
