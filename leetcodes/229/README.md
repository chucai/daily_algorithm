###题目
今天（2017-02-03）选择的题目是LeetCode 229（https://leetcode.com/problems/majority-element-ii/ ）

描述如下：

Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times. The algorithm should run in linear time and in O(1) space.

###解法概要

这道题的解法比较有意思：

###解法详细



https://en.wikipedia.org/wiki/Boyer–Moore_majority_vote_algorithm


Ms的python一句话版本

return map(lambda x:x[0],filter(lambda x:x[1]>len(nums)/3, list([i,nums.count(i)] for i in set(nums))))