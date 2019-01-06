# DockerUtil
dockerfile &amp;&amp; bash

随便收集一些平常写的dockerfile

# Index
- liteOs: 基于busybox的最小docker，因为是在虚拟机里做的，rootfs还有点问题
- noob: 基于二进制程序的一些尝试

<hr>

- base: 基础镜像，基于ubuntu，本地化的内容比较多，ali源
- coder: 主要是一些常用工具的配置
- lang: 各语言环境
    - all: 包含全部语言环境，日常用不错
- work: 测试环境

从上到下依次迭代

<hr>
- doc-clear.sh: 自动清除所有中间层容器和debug镜像

# LICENSE
MIT