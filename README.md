prime within 10^7
usage
-----

hit `prime.m` to run.

input anteger and return all prime lt n.
n should be lt than 10^7

algorithm
---------

判断一个数是不是素数时，只遍历已有的素数。
为了便于将循环写成矩阵的形式，分段处理。
例如：

- 判断17-200之间的素数时，只需遍历2-16之间素数剔除合数即可。
- 判断200-10^4之间的素数，只需遍历2-200之间素数剔除合数即可。

optimise algorithm
------------------

![10^7用八个素数剔除 剩10^6][kick7]
![剔除分析10^9][kick9]

[kick9]:kick1e9.jpg
[kick7]:kict1e0with8prime_remaining1e6.jpg
