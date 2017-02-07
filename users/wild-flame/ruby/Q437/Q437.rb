def path_sum(root, sum)
  return 0 if root == nil
  count = traverse(root, sum)
  return count + path_sum(root.left, sum) + path_sum(root.right, sum)
end


def traverse(root, sum)

  count = 0
  
  return 0 if root == nil

  count += 1 if root.val == sum
  count += traverse(root.left, sum - root.val) if root.left != nil 
  count += traverse(root.right, sum - root.val) if root.right != nil 

end

