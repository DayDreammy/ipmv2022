# Lecture5\_Epipolar\_Geometry\_(I)\_ 对极几何

## 目录

*   *   [线索](#线索)

    *   [笔记](#笔记)

*   [课前闲聊](#课前闲聊)

*   [1. Preliminaries](#1-preliminaries)

    *   [1.1 Cross product](#11-cross-product)

        *   [反对称矩阵常用的性质](#反对称矩阵常用的性质)

    *   [1.2 坐标变换](#12-坐标变换)

    *   [1.3矩阵的特征值分解](#13矩阵的特征值分解)

    *   [1.4奇异值分解 Singular Value Decomposition(SVD)](#14奇异值分解-singular-value-decompositionsvd)

        *   [奇异值和奇异向量，以及他们与奇异值分解的关系](#奇异值和奇异向量以及他们与奇异值分解的关系)

        *   [与特征值分解的联系](#与特征值分解的联系)

*   [2对极几何 Epipolor Geometry](#2对极几何-epipolor-geometry)

    *   [2.1对极几何模型](#21对极几何模型)

    *   [2.2 Essential matrix](#22-essential-matrix)

        *   [2.2.1定义](#221定义)

        *   [2.2.2推导过程](#222推导过程)

        *   [2.2.3特点 ](#223特点-)

*   [\$\$
    \left\[\begin{array}{}
    x & y & 1
    \end{array}\right\]
    \left\[\begin{array}{}
    e\_{11} & e\_{12} & e\_{13} \\
    e\_{21} & e\_{22} & e\_{23} \\
    e\_{31} & e\_{32} & e\_{33} \\
    \end{array}\right\]\
    \left\[\begin{array}{}
    x` \\ y` \ 1
    \end{array}\right\]](#leftbeginarrayx--y--1endarrayrightleftbeginarraye_11--e_12--e_13-e_21--e_22--e_23-e_31--e_32--e_33-endarrayrightleftbeginarrayx--y--1endarrayright)

    *   *   [2.2.4分解Essential matrix](#224分解essential-matrix)

*   [\end{array}\right\]\\
    \，\\](#endarrayright)

*   [\left\[\begin{array}
    {}
    0 & s & 0 \\
    \-s & 0 & 0 \\
    0 & 0 & 0 \\
    \end{array}\right\]
    \left\[\begin{array}
    {}
    0 & -1 & 0 \\
    1 & 0 & 0 \\
    0 & 0 & 1 \\
    \end{array}\right\]  ( I)
    \\,\\](#leftbeginarray0--s--0--s--0--0-0--0--0-endarrayrightleftbeginarray0---1--0-1--0--0-0--0--1-endarrayright---i)

    *   *   *   [分类讨论4种可能的解](#分类讨论4种可能的解)

*   [\$ \bm E = \[t\]\_\times \bm R = s  \bm U  \bm Z\_1  \bm U^T  \bm R = \bm  U s diag(1,1,0) \bm W\_1^T \bm  U^T \bm  R
    \= \bm  U \sum \bm W\_1^T \bm  U^T \bm  R](#-bm-e--t_times-bm-r--s--bm-u--bm-z_1--bm-ut--bm-r--bm--u-s-diag110-bm-w_1t-bm--ut-bm--r-bm--u-sum-bm-w_1t-bm--ut-bm--r)

*   [比较得，\$  \bm W\_!^T \bm  U^T \bm  R](#比较得--bm-w_t-bm--ut-bm--r)

*   [\$\$
    \bm E = \[t\]\_\times \bm R = s  \bm U  \bm Z\_1  \bm U^T  \bm R
    \\
    \= \bm  U s diag(1,1,0) \bm W\_2 \bm  U^T \bm  R
    \\= \bm  U \sum \bm W\_2 \bm  U^T \bm  R](#bm-e--t_times-bm-r--s--bm-u--bm-z_1--bm-ut--bm-r-bm--u-s-diag110-bm-w_2-bm--ut-bm--r-bm--u-sum-bm-w_2-bm--ut-bm--r)

    *   [2.3 Fundamental matrix](#23-fundamental-matrix)

        *   [2.3.1引入](#231引入)

        *   [2.3.2定义 ](#232定义-)

    *   [2.4 Homography matrix 单应矩阵](#24-homography-matrix-单应矩阵)

        *   [2.4.1引入](#241引入)

        *   [2.4.2定义](#242定义)

    *   [总结](#总结)

## 线索

*这里写主要线索*

***

1.

2.

3.

4.

<!---->

1.

## 笔记

*这里是主要的笔记内容*

***

author：Yi Yang & Zhengpu Wang

![](https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main/Lecture5_Epipolar_Geometry_(I)/image/image_ExLZFQ9lOu.png)

# 课前闲聊

小范组织的会议。这个男人每节课都能带来一些惊喜。

宝藏男孩。

<https://avvision.xyz/>

# 1. Preliminaries

## 1.1 Cross product

![](https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main/Lecture5_Epipolar_Geometry_(I)/image/image_rvj76f0iac.png)

$\bm a \times \bm b = \[\bm a]*\times \bm b = - \[\bm b]*\times \bm a ,$where反对称矩阵 $\[\bm a]\_\times$:

(算叉乘可以用反对称矩阵去算)

$$

\[a]\_x=\left\[
\begin{array}
{ccc}
0 & -a\_3 & a\_2\\
a\_3 & 0 & -a\_1\\
\-a\_2 & a\_1 & 0\\
\end{array}
\right]
$$

> 小范的记忆小技巧：右上角，a1,a2,a3逆时针写出来，对称的左下角a1,a2,a3。然后右上角a1,a3前面加`-`号，对应的左下角a2前面加`-`号。对角线全为零。

### 反对称矩阵常用的性质

*   $\[\bm a]*\times = -\[\bm a]*\times ^T$

*   $\bm a^T\[\bm a]*\times = \bm 0^T$ and $\[\bm a]*\times\bm a = \bm 0$,where $\bm 0 =\[0,0,0]^T$is a zero vector

*   $\bm a \times \bm b =  \[\bm a]*\times \bm b =-\[\bm b]*\times \bm a$

（第二个，范称“消消乐”性质，后面会碰到）

## 1.2 坐标变换

可以来这里回顾一下

2.成像几何 Imaging Geometry 重点

## 1.3矩阵的特征值分解

![](https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main/Lecture5_Epipolar_Geometry_(I)/image/image_mFLz2vu3YM.png)

> 矩阵代表着某种变换，比如让向量平移，旋转，拉伸等等。而一个向量乘以一个矩阵却只会改变长度，而不改变方向的话，那这个向量就是这个矩阵的特征向量。

![](https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main/Lecture5_Epipolar_Geometry_(I)/image/image_fA3gn1YsZS.png)

*   Q是由A的特征向量得到的。$\bm Q=\[v\_1,v\_2,,,,v\_n] ,$通过定义变形$(\bm A-\lambda)v\_i=0$，得到$v\_i$，进而得到$\bm Q$

*   相似变换：$\widetilde{\bm A} = \bm Q^{-1} \bm A \bm Q$，是个对角阵（特征值无重根），或约旦块（特征值有重根）

*   反过来，就是特征值分解，$\bm A = \bm Q \bm \Lambda \bm Q^{-1}$，这里的$ \Lambda  $就是上面的$\widetilde{\bm A}$

## 1.4奇异值分解 Singular Value Decomposition(SVD)

> **特征值分解只适用于方阵，非方阵就需要用到奇异值分解。**

**SVD的wiki定义：**

In linear algebra, the singular value decomposition (SVD) is a factorization of a real or complex matrix. It generalizes the eigendecomposition of a square normal matrix with an orthonormal eigenbasis to any$  m\times n $ matrix. It is related to the polar decomposition.[#词典](https://www.wolai.com/jLR5uopPKYAVgZx61Gja3o.md "#词典")

**中文定义：**

**奇异值分解**（singular value decomposition）是[线性代数](https://zh.wikipedia.org/wiki/线性代数 "线性代数")中一种重要的[矩阵分解](https://zh.wikipedia.org/wiki/矩阵分解 "矩阵分解")，在[信号处理](https://zh.wikipedia.org/wiki/信号处理 "信号处理")、[统计学](https://zh.wikipedia.org/wiki/统计学 "统计学")等领域有重要应用。奇异值分解在某些方面与[对称矩阵](https://zh.wikipedia.org/wiki/對稱矩陣 "对称矩阵")或[厄米矩阵](https://zh.wikipedia.org/wiki/厄米矩阵 "厄米矩阵")基于[特征向量](https://zh.wikipedia.org/wiki/特征向量 "特征向量")的[对角化](https://zh.wikipedia.org/wiki/对角化 "对角化")类似。

**人话：**

正如某些方阵可以进行特征值分解，$\widetilde{\bm A} = \bm Q^{-1} \bm A \bm Q$是个对角阵$diag\[\lambda\_1,\lambda\_2,,,,\lambda\_n ]$，$\bm Q$由矩阵$\bm A$的特征向量组成。由于非方阵无法求逆，就引入这样分解的办法$\bm M =\bm U \sum \bm V^\*$  ，称为奇异值分解。用途有求广义逆阵（伪逆），列空间、零空间和秩，矩阵近似值等。

$$
\bm M =\bm U \sum \bm V^\*
$$

*U\_是\_m×m\_阶*[*酉矩阵*](https://zh.wikipedia.org/wiki/酉矩陣 "酉矩阵")*；****Σ是\_m×n\_阶非负***[***实数***](https://zh.wikipedia.org/wiki/实数 "实数")[***对角矩阵***](https://zh.wikipedia.org/wiki/對角矩陣 "对角矩阵")*；而\_V\**，即\_V\_的[共轭转置](https://zh.wikipedia.org/wiki/共轭转置 "共轭转置")，是\_n×n\_阶酉矩阵。这样的分解就称作\_M\_的**奇异值分解**。Σ对角线上的元素Σ\_i\_,\_i\_即为\_M\_的**奇异值**。

**扫盲：正交矩阵、酉矩阵**

*   **正交矩阵**：（英语：**orthogonal matrix**）是一个方块矩阵]$\bm Q$,其元素为[实数](https://zh.wikipedia.org/wiki/实数 "实数")，而且行向量与列向量皆为[正交](https://zh.wikipedia.org/wiki/正交 "正交")的[单位向量](https://zh.wikipedia.org/wiki/单位向量 "单位向量")，使得该矩阵的[**转置矩阵**](https://zh.wikipedia.org/wiki/转置矩阵 "转置矩阵")**为其逆矩阵**：

$$
Q^{T}=Q^{-1}\Leftrightarrow Q^{T}Q=QQ^{T}=I.,!
$$

*   **酉矩阵**是[实数](https://zh.wikipedia.org/wiki/實數 "实数")上的[正交矩阵](https://zh.wikipedia.org/wiki/正交矩阵 "正交矩阵")，在[复数](https://zh.wikipedia.org/wiki/複數 "复数")的推广。特点是酉矩阵的[逆矩阵](https://zh.wikipedia.org/wiki/逆矩陣 "逆矩阵")，就是其**共轭转置**：$U^{-1}=U^{\*}$

    *   举例，$\bm A = \left\[
        \begin{array}
        {cc}
        1   & -2-i \\
        1+i & i    \\
        \end{array} \right]$，共轭转置$ \bm A^\* = \left\[
        \begin{array}
        {cc}
        1    & 1-i \\
        \-2+i & -i    \\
        \end{array} \right]  $

### 奇异值和奇异向量，以及他们与奇异值分解的关系

如果M是实数域的，U和V也能保证是实正交阵。

$$
\bm M =\bm U \sum \bm V^T
$$

一个非负实数σ是\_M\_的一个[奇异值](https://zh.wikipedia.org/w/index.php?title=奇异值\&action=edit\&redlink=1 "奇异值")仅当存在\_K\_\_m\_的单位向量\_u\_和\_K\_\_n\_的单位向量\_v\_如下：

$Mv=\sigma u,{\text{ and }}M^{T}u=\sigma v.,!$

其中向量\_u\_和\_v\_分别为σ的左奇异向量和右奇异向量。

对于任意的奇异值分解$M=U\Sigma V^{\*},!$

矩阵**Σ的对角线上的元素等于\_M\_的奇异值**. \_U\_和\_V\_的列分别是奇异值中的左、右奇异向量。

### 与特征值分解的联系

奇异值分解能够用于任意$m\times n$矩阵，而[特征分解](https://zh.wikipedia.org/wiki/特征分解 "特征分解")只能适用于特定类型的方阵，故奇异值分解的适用范围更广。不过，这两个分解之间是有关联的。给定一个\_M\_的奇异值分解，根据上面的论述，两者的关系式如下：

$$
M^TM=V{\sum}^TU^TU{\sum}V^T=V({\sum}^T{\sum})V^T
$$

$$
MM^T=U{\sum}V^TV{\sum}^TU^T=U({\sum}{\sum}^T)U^T
$$

化简的要点是啥？$U、V$都是单位正交阵，性质：$U^TU=I$

留个问题：特征值  $ \lambda  $ 和 奇异值 $\sigma$ 之间有何关系？

@ 疑问：约旦型分解和这个是啥关系？

[参考阅读：](https://www.wolai.com/hPcdybTe6XD4nbcZrabaag.md "参考阅读：")

2022/03/29 20:59 第一遍看完：看了个寂寞😢

2022/04/23 20:40 第二遍看完：奇异值分解不就是非方阵的特征值分解吗？

# 2对极几何 Epipolor Geometry

## 2.1对极几何模型

一个双目系统的对极几何例子：

![](https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main/Lecture5_Epipolar_Geometry_(I)/image/image_baU0Fhqoyj.png)

*   平面 $\Pi \_L$和$\Pi \_R$代表了左右图像平面

*   $\bm o^C\_L$和$\bm o^C\_R$代表了左右相机坐标系的原点

*   点$\bm p^W =\[x^W,y^W,z^W]$是世界坐标系里面的一个点，在左右图像平面的映射分别是$\overline{\bm p}\_L=\[x\_L,y\_L,f\_L]^T$on$\Pi \_L$,and $\overline{\bm p}\_R=\[x\_L,y\_L,f\_R]^T$on$\Pi \_R$（齐次坐标）

*   $ f\_L  $和$f\_R$是左右相机的焦距

*   点$\bm p^W =\[x^W,y^W,z^W]$在左右相机坐标系分别被表示为${\bm p}\_L^C=\[x\_L^C,y\_L^C,z\_L^C]^T=\frac{z\_L^C}{f\_L}\overline{\bm p}\_L$,and ${\bm p}\_R^C=\[x\_R^C,y\_R^C,z\_R^C]^T=\frac{z\_R^C}{f\_R}\overline{\bm p}\_R$

以上都是"相对地"。

*   $\bm p\_L^C$可以被转化为$\bm p\_R^C$通过：$\bm p\_R^C =\bm R \bm p\_L^C + \bm t$

介绍清楚基本模型后，引入对极几何的三个概念

![](https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main/Lecture5_Epipolar_Geometry_(I)/image/image_LULu6uLuCD.png)

![](https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main/Lecture5_Epipolar_Geometry_(I)/image/image_YxUVf1wKm1.png)

*   $\bm e\_L^C$**和**$\bm e\_R^C$称作左右**对极点**。

*   **对极平面**由三个点$\bm o\_L^C,\bm o\_R^C,\bm p^W$唯一确定

*   对极平面$\bm o\_L^C\bm o\_R^C\bm p^W$分别和平面$\Pi \_L$、$\Pi \_R$的交线$\overline{\bm p}\_L \bm e\_L^C$**、**$\overline{\bm p}\_R \bm e\_R^C$，被称作**对极线**。

$\bm p\_L^C$和$\bm p\_R^C$可以被归一化：

$$
\hat{\bm p}\_L^C = \frac{\bm p\_L^C}{z\_L^C}=\bm K\_L^{-1}\widetilde{p}\_L
\\
\hat{\bm p}\_R^C = \frac{\bm p\_R^C}{z\_R^C}=\bm K\_R^{-1}\widetilde{p}\_R
$$

这里$\widetilde{\bm p}=\[\bm p^T,1]^T=\[u\_i,v\_i,1]^T$是$\bm p=\[u\_i,v\_i]^T$的齐次坐标.$\bm K$是内参矩阵.下标L,R代表左右相机。

两个例子：

> 所谓立体视觉，我们要做的就是找到两个图的对应点。

如果每次都从255x255的整个图像遍历一遍去寻找，是不是太慢了？

所以如果可以从对极线上找，就大大减小了工作量。

![](https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main/Lecture5_Epipolar_Geometry_(I)/image/image__kpCeFd1fg.png)

![](https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main/Lecture5_Epipolar_Geometry_(I)/image/image_nxYCsTaJVJ.png)

接下来会介绍3个重要的矩阵。Essential matrix , Fundamental matrix ,homograhpy matrix

## 2.2 Essential matrix

### 2.2.1定义

$\bm p\_L^C$可以被转化为$\bm p\_R^C$通过：

$$
\bm p\_R^C =\bm R \bm p\_L^C + \bm t
$$

**定义**Essential matrix $E \in \mathbb{R}^{3\times3}$

$$
\bm E=\[\bm t]\_\times \bm R
$$

### 2.2.2推导过程

$$
\bm p\_R^C =\bm R \bm p\_L^C + \bm t
$$

上式两边左乘$\bm {p\_R^C}^T\[\bm t]\_\times :$

$$
\bm {p\_R^C}^T\[\bm t]*\times \bm p\_R^C =\bm {p\_R^C}^T\[\bm t]*\times (\bm R \bm p\_L^C + \bm t)
$$

使用$\bm a \times \bm b =  \[\bm a]*\times \bm b =-\[\bm b]*\times \bm a$性质得到

$$
\-\bm {p\_R^C}^T\[\bm p\_R^C]*\times \bm t =\bm {p\_R^C}^T\[\bm t]*\times \bm R \bm p\_L^C +\bm {p\_R^C}^T\[\bm t]\_\times\bm t
$$

再使用“消消乐”性质$\bm a^T\[\bm a]*\times = \bm 0^T$ and $\[\bm a]*\times\bm a = \bm 0$,where $\bm 0 =\[0,0,0]^T$is a zero vector,得到

$$
\bm {p\_R^C}^T\[\bm t]\_\times \bm R \bm p\_L^C =\bm {p\_R^C}^T \bm E \bm p\_L^C =\bm 0
$$

**定义**Essential matrix 为$\bm E=\[\bm t]\_\times \bm R$，$E \in \mathbb{R}^{3\times3}$

> 一般我们算 $\bm E$ 的时候，先把环境中的运动物体去除，因为可能会带来噪声。

又

$$
\hat{\bm p}\_L^C = \frac{\bm p\_L^C}{z\_L^C}=\bm K\_L^{-1}\widetilde{p}\_L
\\
\hat{\bm p}\_R^C = \frac{\bm p\_R^C}{z\_R^C}=\bm K\_R^{-1}\widetilde{p}\_R
$$

我们得到：

$$
\bm {\hat{p}\_R^C}^T \bm E \bm {\hat{p}}\_L^C =\bm 0
$$

(归一化后就不需要深度了)

### 2.2.3特点&#x20;

*   Essential matrix 揭示了在同一个对极平面上的一对点$\hat{\bm p}\_L^C,\hat{\bm p}\_R^C$（归一化后的点）的关系。

*   值得一提的是，$\bm E$有5个自由度。对于一个点，R有3个自由度，t有三个自由度，所以$\bm E$本应该有6个自由度。但是$\bm E$表示的是左平面一条线上的点和对应右平面上的点的对应关系。**这些点都在一条线上，增加了一个约束，所以自由度少了1.**（一个任意点自由度是6，在一条线上的一群点增加了一个约束（在一条线上），所以自由度降为5）感谢[儒戈的讲解](https://www.wolai.com/eZSg3WGumMW2xqTCQnsHn4.md "儒戈的讲解")

*   所以理论上可以通过至少5对点把$\bm E$估计出来。但是由于$\bm E$的非线性，所以**习惯上至少需要8对点来估计，俗称八点法。**（这里的估计，就是用最小二乘法来拟合）

$$
\left\[\begin{array}{}
x & y & 1
\end{array}\right]
\left\[\begin{array}{}
e\_{11} & e\_{12} & e\_{13} \\
e\_{21} & e\_{22} & e\_{23} \\
e\_{31} & e\_{32} & e\_{33} \\
\end{array}\right]\
\left\[\begin{array}{}
x` \\ y` \ 1
\end{array}\right]
==================

0
$$

得到

$$
e\_{11}\bm x\bm x^{\prime} +e\_{12}\bm x\bm y^{\prime}+e\_{13}\bm x +e\_{21}\bm x^{\prime}\bm y + e\_{22}\bm y\bm y^{\prime} +e\_{23}\bm y + e\_{31}\bm x^{\prime} +e\_{32}\bm y^{\prime} +e\_{33} = 0
$$

> 虽然有9个未知量，但是 方程两边同除以$e\_{33}$后，实际的未知量减少到8个。

改写成矩阵形式

$$
\left\[\begin{array}{ccccccccc}\bm x \bm x^{\prime} & \bm x \bm y^{\prime} & \bm x & \bm x^{\prime} \bm y& \bm y \bm y^{\prime} & \bm y & \bm x^{\prime} & \bm y^{\prime} & 1 \ \end{array}\right]\left\[\begin{array}{c}e\_{11} \ e\_{12} \ e\_{13} \ e\_{21} \ e\_{22} \ e\_{23} \ e\_{31} \ e\_{32} \ e\_{33}\end{array}\right]=0
$$

把矢量元素都展开，

$$
\left\[\begin{array}{ccccccccc}x\_{1} x\_{1}^{\prime} & x\_{1} y\_{1}^{\prime} & x\_{1} & x\_{1}^{\prime} y\_{1} & y\_{1} y\_{1}^{\prime} & y\_{1} & x\_{1}^{\prime} & y\_{1}^{\prime} & 1 \ x\_{2} x\_{2}^{\prime} & x\_{2} y\_{2}^{\prime} & x\_{2} & x\_{2}^{\prime} y\_{2} & y\_{2} y\_{2}^{\prime} & y\_{2} & x\_{2}^{\prime} & y\_{2}^{\prime} & 1 \ \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \vdots \ x\_{n} x\_{n}^{\prime} & x\_{n} y\_{n}^{\prime} & x\_{n} & x\_{n}^{\prime} y\_{n} & y\_{n} y\_{n}^{\prime} & y\_{n} & x\_{n}^{\prime} & y\_{n}^{\prime} & 1\end{array}\right]\left\[\begin{array}{c}e\_{11} \ e\_{12} \ e\_{13} \ e\_{21} \ e\_{22} \ e\_{23} \ e\_{31} \ e\_{32} \ e\_{33}\end{array}\right]=0
$$

看这个矩阵样子，有没有一丢丢熟悉？

没错，这个就是最小二乘法

$$
\bm A\_{n \times 9} \bm b\_{9 \times 1} = \bm 0\_{n \times 1}
$$

### 2.2.4分解Essential matrix

扩展阅读：[04-stereo-systems.pdf (stanford.edu)](https://web.stanford.edu/class/cs231a/course_notes/04-stereo-systems.pdf "04-stereo-systems.pdf (stanford.edu)")

[04-stereo-systems.pdf](file/04-stereo-systems_eD7Y3gzSyV.pdf)

![](https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main/Lecture5_Epipolar_Geometry_(I)/image/image_1T5M6ILf2W.png)

使用SVD分解E,$\bm E =\bm  U \bm \sum \bm V^T$,where

$$
\bm \sum  =
\left\[\begin{array}
{}
s & 0 & 0 \\
0 & s & 0 \\
0 & 0 & 0 \\

\end{array}\right]
$$

$rank(AB) \le rank(B)$，因为$\bm E=\[\bm t]*\times \bm R$，$rank(\[t]*\times )=2$，所以rank($\bm \sum$)=2

(温馨提示：后面的分析，请时刻把$\bm E =\bm  U \bm \sum \bm V^T$的形式套进去看，很重要)

$\sum$可以写成两种形式，

$$

\bm \sum  =
\left\[\begin{array}
{}
s & 0 & 0 \\
0 & s & 0 \\
0 & 0 & 0 \\

\end{array}\right]\\
\，\\
====

\left\[\begin{array}
{}
0 & s & 0 \\
\-s & 0 & 0 \\
0 & 0 & 0 \\
\end{array}\right]
\left\[\begin{array}
{}
0 & -1 & 0 \\
1 & 0 & 0 \\
0 & 0 & 1 \\
\end{array}\right]  ( I)
\\,\\
=====

\left\[\begin{array}
{}
0 & -s & 0 \\
s & 0 & 0 \\
0 & 0 & 0 \\
\end{array}\right]
\left\[\begin{array}
{}
0 & 1 & 0 \\
\-1 & 0 & 0 \\
0 & 0 & 1 \\
\end{array}\right] (II)

$$

观察发现，红线左边这一列，上下相反。右边这一列，上下成转置关系。

![](https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main/Lecture5_Epipolar_Geometry_(I)/image/image_1TjjBC2ICw.png)

#### 分类讨论4种可能的解

由于$ \bm E = \[t]*\times \bm R  $, $\[\bm t]*\times = s \bm U \bm Z \bm U^T$,$\bm R = \bm U \bm W \bm V^T$或$\bm R = \bm U \bm W^T \bm V^T$,2种$\bm Z$，分别对应2种$\bm W$，所以从Essential matrix 求解相机的旋转和平移共有4个解。下面分类讨论。

$\bm Z\_1$

反对称矩阵 $\[t]\_\times$可以被写为

$$
\[\bm t]\_\times = s\bm U\bm Z\_1\bm U^T
$$

$$
\bm Z\_1=\left\[\begin{array}{}
0 & 1 & 0 \\
\-1 & 0 & 0 \\
0 & 0 & 0\\
\end{array}\right]
$$

\*\*Case I : \*\*$\bm W\_1$

$$
\bm W\_1 =\left\[\begin{array}{}
0 & -1 & 0 \\
1 & 0 & 0 \\
0 & 0 & 1\\
\end{array}\right]
$$

where $\bm Z\_1 = diag(1,1,0)\bm W\_1^T , \bm Z\_1 \bm W\_1=diag(1,1,0).$这里对应上面的Case I

\$ \bm E = \[t]\_\times \bm R = s  \bm U  \bm Z\_1  \bm U^T  \bm R = \bm  U s diag(1,1,0) \bm W\_1^T \bm  U^T \bm  R
\= \bm  U \sum \bm W\_1^T \bm  U^T \bm  R
=========================================

\bm U \sum \bm V^T  \$

# 比较得，\$  \bm W\_!^T \bm  U^T \bm  R

\bm V^T  \$

$\bm R = (\bm W\_1^T U^T)^{-1} \bm V^T = \bm U \bm W\_1 \bm V^T$

所以，$\bm R =  \bm U \bm W\_1 \bm V^T$

（这里最后一步用到了特殊正交群SO(3)的性质：$\bm W\bm W\_1^T =\bm  I$,$\bm W$ 可以确定是的，$\bm U$我不确定，但是推导把它也当作SO(3)）

\*\*Case I : \*\*$\bm W\_2$

$$
\bm W\_2 =\left\[\begin{array}{}
0 & 1 & 0 \\
\-1 & 0 & 0 \\
0 & 0 & 1\\
\end{array}\right]
$$

where $\bm Z\_1 = diag(1,1,0)\bm W\_2 , \bm Z\_1 \bm W\_2^T=diag(1,1,0).$这里对应上面的Case II

$$
\bm E = \[t]\_\times \bm R = s  \bm U  \bm Z\_1  \bm U^T  \bm R
\\
\= \bm  U s diag(1,1,0) \bm W\_2 \bm  U^T \bm  R
\\= \bm  U \sum \bm W\_2 \bm  U^T \bm  R
========================================

\bm U \sum \bm V^T
$$

同理比较得，$\bm R =  \bm U \bm W\_2^T \bm V^T$

很显然，$\bm W\_1 = \bm W\_2^T$

$\bm Z\_2$

如果$ \bm E = \[t]\_\times \bm R = -s  \bm U  \bm Z\_2  \bm U^T  \bm R  $,where

$$
\bm Z\_2=\left\[\begin{array}{}
0 & -1 & 0 \\
1 & 0 & 0 \\
0 & 0 & 0\\
\end{array}\right]
$$

$（\bm Z\_2 = - \bm Z\_1）$

因此

$$
\[\bm t]\_\times = s \bm U \bm Z\_2 \bm U^T
$$

$\bm R$ 同样有两个解，$\bm R =  \bm U \bm W\_1 \bm V^T$或者$\bm R =  \bm U \bm W\_2^T \bm V^T$，因为$\bm Z\_2 = diag(1,1,0)\bm W\_1$或者$\bm Z\_2 = diag(1,1,0)\bm W\_2^T$

所以 分解一共有4种情况。

1.  $\bm Z\_1$ —- $\bm W\_1$

2.  $\bm Z\_1$ —- $\bm W\_2$

3.  $\bm Z\_2$ —- $\bm W\_1$

4.  $\bm Z\_2$ —- $\bm W\_2$

由于$ \bm E = \[t]*\times \bm R  $, $\[\bm t]*\times = s \bm U \bm Z \bm U^T$,$\bm R = \bm U \bm W \bm V^T$或$\bm R = \bm U \bm W^T \bm V^T$,所以从Essential matrix 求解相机的旋转和平移共有4个解。

![](https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main/Lecture5_Epipolar_Geometry_(I)/image/image_MDrZwjUOu0.png)

(a)是正解。如何判断？

*   物体在正前方

*   左右相机A，B的位置是正确的

## 2.3 Fundamental matrix

> 直接得到两张图片3D点的关系比较奢侈，而2D点的关系相对容易求得。

### 2.3.1引入

本质矩阵 essential matrix 提供了左右相机平面的**一对三维的点**之间的关系。

如果双目相机里两个相机的内参矩阵是未知的，那么一个点在对应两个相机的图像像素点 $\bm p\_L = \[u\_L,v\_L]^T , \bm p\_R = \[u\_R,v\_R]^T$的关系可以被估计出来，通过使用基本矩阵 fundamental matrix $\bm F \in \mathbb{R}^{3 \times 3}$

结合

$$
\hat{\bm p}\_L^C = \frac{\bm p\_L^C}{z\_L^C} = \bm K\_L^{-1} \widetilde{\bm p}\_L ,
\hat{\bm p}\_R^C = \frac{\bm p\_R^C}{z\_L^C} = \bm K\_R^{-1} \widetilde{\bm p}\_R
$$

和

$$
\bm {\hat{p}\_R^C}^T \bm E \bm {\hat{p}}\_L^C =\bm 0
$$

可以得到

$$
\widetilde{\bm p}\_R^T \bm K\_R^{-T}  \bm E  \bm K\_L^{-1} \widetilde{\bm p}\_L=
\widetilde{\bm p}\_R^T \bm F \widetilde{\bm p}\_L=\bm 0
$$

> 观察，只需要图像平面的点，就可以求出$\bm F$，相对容易

### 2.3.2定义&#x20;

fundamental matrix $\bm F$

$$
\bm F =  \bm K\_R^{-T}  \bm E  \bm K\_L^{-1}
$$

$ \bm F  $有7个自由度。一个齐次矩阵homogeneous matrix 有8个独立系数，

![](https://cdn.jsdelivr.net/gh/DayDreammy/ipmv2022@main/Lecture5_Epipolar_Geometry_(I)/image/image_2eu8FftRWu.png)

## 2.4 Homography matrix 单应矩阵

### 2.4.1引入

一个任意的三维点 $ \bm p^W = \[x^W,y^W,x^W]^T  $放置在一个平面上满足，

$$
\bm n^T \bm p^W +b=0
$$

where $ \bm n = \[n\_x , n\_y, n\_z]^T  $是平面的法向量。这个点在对应左右相机像素平面上的点$\bm p\_L = \[u\_L,v\_L]^T ,\bm p\_R = \[u\_R,v\_R]^T$可以被单应矩阵$\bm H \in \mathbb{R} ^{3 \times 3}$联系起来。

重新组织一下平面表达式，

$$
　－\bm n^T \bm p^W ／b=１
$$

假设　$\bm p\_L^C = \bm p^W$，并将

$$
\bm n^T \bm p^W +b=0
$$

和

$$
\bm {\hat{p}\_R^C}^T \bm E \bm {\hat{p}}\_L^C =\bm 0
$$

和

$$
\hat{\bm p}\_L^C = \frac{\bm p\_L^C}{z\_L^C} = \bm K\_L^{-1} \widetilde{\bm p}\_L ,
\hat{\bm p}\_R^C = \frac{\bm p\_R^C}{z\_L^C} = \bm K\_R^{-1} \widetilde{\bm p}\_R
$$

代入

$$
\bm p\_R^C = \bm R \bm p\_L^C + \bm t
$$

结果为，

$$
\bm p\_R^C = \bm R \bm p\_L^C -\frac{1}{b} \bm t  \bm n^T \bm p^C\_L  =
(\bm R -  \frac{1}{b} \bm t  \bm n^T)\bm z\_L^C \bm K\_L^{-1} \widetilde{\bm p}\_L
\= z\_R^C \bm K\_R^{-1} \widetilde{\bm p}\_R

$$

所以，$\widetilde{\bm p}\_L$和$ \widetilde{\bm p}\_R  $有以下联系：

$$

\widetilde{\bm p}\_R=
\frac{z\_L^C}{z\_R^C} \bm K\_R (\bm R -  \frac{1}{b} \bm t  \bm n^T)\bm K\_L^{-1} \widetilde{\bm p}\_L=\bm H \widetilde{\bm p}\_L
$$

### 2.4.2定义

单应矩阵homography matrix ：

$$

\widetilde{\bm p}\_R=\bm H \widetilde{\bm p}\_L
$$

单应矩阵 $\bm H$ 通常用于区分平面上的障碍。

一般只需要**4对点**就可以计算出$\bm H$,why?

从

$$
\widetilde{\bm p}\_2=\bm H \widetilde{\bm p}\_1
$$

$$
\bm H = \left\[\begin{array}{}
h\_{11} & h\_{12} & h\_{13} \\
h\_{21} & h\_{22} & h\_{23} \\
h\_{31} & h\_{32} & 1      \\
\end{array}\right]
$$

可以得到

$$

u\_2 = \frac{ u\_1 h\_{11} +v\_1 h\_{12}+h\_{13} }
{u\_1 h\_{31} +v\_1 h\_{32}+1}

$$

$$

v\_2 = \frac{ u\_1 h\_{21} +v\_1 h\_{22}+h\_{23} }
{u\_1 h\_{31} +v\_1 h\_{32}+1}
$$

上面的等式可以写为矩阵形式：

$$
\bm A \bm a = \bm b
$$

where

$$
\bm A = \left\[\begin{array}{}
u\_1 & v\_1 &1 & 0 & 0 & 0 -u\_1u\_2 -u\_2v\_1\\
0   & 0   &0 & u\_1 & v\_1 & 1 -u\_1u\_2 -v\_1v\_2\\
\end{array}\right]
$$

我们可以得到，

$$
\bm a = \[h\_{11} ,h\_{12} , h\_{13} , h\_{21} , h\_{22} , h\_{23} , h\_{31}, h\_{32} ]^T
\\
\bm b = \[u\_2,v\_2]^T
$$

$\bm A$ ，$\bm b$ 已知，最小二乘法得到 $\bm a$.**8个未知量**需要8个方程来求解，也就是**4对点**。所以单应矩阵和基本矩阵都使用2D点解的，基本矩阵求解更容易。

扩展阅读：

[04-stereo-systems.pdf (stanford.edu)](https://web.stanford.edu/class/cs231a/course_notes/04-stereo-systems.pdf "04-stereo-systems.pdf (stanford.edu)")

[04-stereo-systems.pdf](file/04-stereo-systems_drKfBDQfnU.pdf)

## 总结

*这里写总结*

***

*   重要内容总结

    1.

    2.

    3.
