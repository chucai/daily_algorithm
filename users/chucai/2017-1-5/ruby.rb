def sum_numbers(root)
    @total = 0
    @sum = 0
    dfs(root)
    return @total
end

def dfs(node)
    if node.nil?
        return
    end

  @sum = @sum * 10 + node.val

  if node.right.nil? && node.left.nil?
    @total += @sum
  else
    dfs(node.left)
    dfs(node.right)
  end

  @sum = @sum /  10
end