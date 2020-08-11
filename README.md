# 中南大学课程表-Flutter

## 项目简介
中南课表app的整体参考了另一个课程表项目：[南哪课表](https://github.com/idealclover/NJU-Class-Shedule-Flutter)，并使用了Flutter框架，这使得中南课表app可以轻易地在安卓和iOS运行。
## 下载使用


### 安卓

Demo下载地址:



### iOS

请确保下载了Xcode,正确导入项目并编译运行

## 教务系统解析思路

和大部分爬虫的思路一样,逻辑是模拟登录教务系统网站，获得并处理包含课程表信息的文件：

- 使用dio库访问教务系统网站<http://csujwc.its.csu.edu.cn/jsxsd/>获得cookie

- 模拟post发送带有**cookie数据**和**加密后的账号密码**的请求，至于具体信息如何加密，请自行使用chrome的开发者工具研究，其实很简单。

- 使用cookie请求网址<http://csujwc.its.csu.edu.cn/jsxsd/kbxx/getKbxx.do>获得json，不得不佩服中南的教务系统，这个文件几乎已经和标准的json数据一致，但依旧需要进一步处理，以免漏掉重复的课程

- 处理使用了正则表达式

##Bugs

下载第一次运行会白屏，退出再进就好了
