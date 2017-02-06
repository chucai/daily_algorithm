###题目
今天（2017-02-03）选择的题目是LeetCode 229（https://leetcode.com/problems/majority-element-ii/ ）

描述如下：
Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times.
The algorithm should run in linear time and in O(1) space.

###解法概要

这道题的解法比较有意思：
    蒙特卡洛算法
    摩尔投票算法
    分治算法

###解法详细

首先是蒙特卡洛算法，也成为统计模拟方法。这个方法的相关说明可以参见如下：
[Monte Carlo method](https://en.wikipedia.org/wiki/Monte_Carlo_method)<br />
看英文吃力的可以看一下[百度百科](http://baike.baidu.com/link?url=i5eE5zAbi9PdA9xiFpU7NdAGr0ezkky4LTuWgdA-sMXj-G7oB3gAvYg-84oHKcHSL_iIclv22oR7UUSwsLw2QsF8uSlAjsollJtOvAUwweCmNO1JjAQtlIctpTld5oeRWRnwTt4Ck1l7iSpJOUa8uk3wGgBrJv_6y_UbuHVnXkrLdjwsVUq7YciUJwdQtMhY-9KOxrgM7pKvPaxuxKDaKJpJ9-LGZw__IaN3S3e-8yGhe737mdwDr050ssshzbR80Nm1mRwy2zsTEi6WQ4vNNq)<br />  ，也有相关介绍
此题的具体应用参见D@vid的代码，其中的注释写的很清楚

D@vid的ruby版本
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/david_MonteCarlo_ruby.jpeg)

有问题问寒哥的Python版本
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/%E6%9C%89%E9%97%AE%E9%A2%98%E9%97%AE%E5%AF%92%E5%93%A5_MonteCarlo_python.jpeg)

Chirs C的Java版本
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/Chirs%20C_MonteCarlo_java.jpeg)

再来看摩尔投票算法。相关说明同样参见如下
[Boyer–Moore majority vote algorithm](https://en.wikipedia.org/wiki/Boyer–Moore_majority_vote_algorithm)<br />
不想看英文可以看一下讨论内容，介绍了算法的思想以及对题目进行了扩展。
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/WechatIMG29.jpeg)
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/WechatIMG30.jpeg)
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/WechatIMG31.jpeg)
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/WechatIMG32.jpeg)
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/WechatIMG33.jpeg)

fzy的Java版本
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/WechatIMG27.jpeg)

Jerrold_Gao的Java版本
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/JerroleGao_MonteCarlo_java.jpeg)

Kee的swift版本
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/Kee_Moore_swift.jpg)

Dmtalen Ding的python版本
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/Dmtalen%20Ding_Moore_swift.jpg)

AriesDevil的go版本
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/AriesDevil_Moore_go.jpg)

AKUN的Java版本
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/AKUN_Moore_java.jpeg)

黄xing的Java版本，泛化到求出现次数大于n/size的情况

最后来看分治算法
思路是把所有一样的数试图聚集起来，一旦超过n/3就加入result

Jerrold_Gao的Java版本
 ![image](https://github.com/M-renard/daily_algorithm/blob/master/leetcodes/229/image/JerroleGao_%E5%88%86%E6%B2%BB%E6%B3%95_java.jpeg)