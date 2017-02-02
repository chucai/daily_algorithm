### 题目
这周的题目围绕Array展开。

今天（2017-02-02）选择的题目是LeetCode 209（https://leetcode.com/problems/minimum-size-subarray-sum/ ）

描述如下：
> Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.
 
> For example, given the array [2,3,1,2,4,3] and s = 7,
the subarray [4,3] has the minimal length under the problem constraint.

### 解法概要
这道题的解法较多，大致可以分为：
- 暴力破解法
- 滑动窗口
- 分治算法
- 二分法
- Queue＋贪心算法

### 解法详细
简要思路为:
- 暴力破解法

简要思路为，对输入的数组中的每一个元素，分别计算出能够满足s条件的最小的数组的长度。具体实现代码可参考 @hz的java实现
![java 暴力破解法](./images/hz_brute_java.png "@hz 提交的Java版本")
 
 
 
### 总结

- 分治算法 
在这篇公众号里面，对分治算法(Divide and Concqure)有比较系统的论述，建议研读。

#### 备忘
- @Max提交
- @岁 提交
