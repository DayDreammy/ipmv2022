## Image Processing & Machine Vision 2022 图像处理与机器视觉

本系列为2022年同济大学电信学院控制系**图像处理与机器视觉**课程笔记。笔记已经全部更新完成，欢迎大家批评指正！

Lecturer: [Rui Fan](https://link.zhihu.com/?target=https%3A//www.ruirangerfan.com/) （[@Ranger](https://www.zhihu.com/people/d14faba1a21e6bb7a21e15f48992b035)）

Email: **rfan@tongji.edu.cn**

Teaching Support Assistants: Yi Feng & Shuai Su

author：[Yi Yang](https://link.zhihu.com/?target=https%3A//www.wolai.com/4mewHXec9DYzkevUyNxcv3) & Zhengpu Wang

textbook：[Computer Stereo Vision for Autonomous Driving](https://link.zhihu.com/?target=https%3A//www.ruirangerfan.com/pdf/cvapp2022_fan.pdf)

![img](https://pic1.zhimg.com/v2-f645cc5531acf4f162767f1e48d10864_r.jpg)

![img](https://pic4.zhimg.com/v2-2beb09b07aa28ad41b6de3fef310302b_r.jpg)课程大纲

## 课程大纲解读：

最核心的三门课，

- Perspective Transformation
- Camera Calibration
- Epipolar Geometry

比较独立的课

- Optical Flow
- Stereo Matching

目前CV顶会深度学习内容占95%以上，所以讲了

- Deep Learning Applications

比较传统、基础的一些课

- Image Filtering
- Image Pyramid
- Edge,Corner,Line,BLod, & Keypoint Features

没讲到的一些内容

- Fourier transform
- Wavelet transform
- Superpixel clustering 超像素聚类（一些区域的像素相近，所以这一块看成超像素）
- Image/video compression
- Image restoration
- Surface normal estimation
- Photometric stereo

------

笔记采用wolai平台完成，排版漂亮，打公式也很方便。如果notion用不习惯，可以试试这个。

[我来 wolai - 不仅仅是未来的云端协作平台与个人笔记](https://link.zhihu.com/?target=https%3A//www.wolai.com/signup%3Finvitation%3DYIEINUJ)

> ps:wolai可以正常显示的公式在其它平台好像有点问题，逐个修改工作量太大了。也尝试过各种办法，为了保证良好的阅读体验，建议大家去wolai平台阅读。

欢迎大家批评指正！

## 课程笔记主页

[IPMV-2022](https://www.wolai.com/2sEDu1o2vvfSW5goYQb6nr)

![img](https://pic4.zhimg.com/v2-0f2775eb7982d0d6aefcadc109dd1577_r.jpg)

## Lecture2 Human Visual Perception ,Cameras & Images

第二章主要介绍人类视力的原理，一些研究会用的相机（如鱼眼相机、线性扫描相机、事件相机等），以及图像和色彩的相关知识。

[Lecture2_Human_Visual_Perception,Cameras_&_Images (wolai.com)](https://www.wolai.com/gvhbWxyRxSZ9nAuGYJkZSr)



![img](https://pic4.zhimg.com/v2-e98ad9ed26d7238c04aa554a4be2b5d7_r.jpg)



## Lecture3 Perspective Transformation

第三章先铺垫了一些线性代数预备知识，如向量、范数、反对称矩阵、坐标变换矩阵等。然后介绍了成像几何的四个坐标系及坐标系之间的变换的知识。学完这一章，世界坐标系、相机坐标系、图像坐标系以及像素坐标系就可以相互转换了。

[Lecture3_Perspective_Transformation (wolai.com)](https://www.wolai.com/6jfvrX7YGpYhXkVhSpnM6n)

或者看这一篇：[水云身：Lecture3_Perspective_Transformation](https://zhuanlan.zhihu.com/p/532029652)

![img](https://pic4.zhimg.com/v2-42c8be82bb9363c104d3fe28eb5e8f37_r.jpg)

![img](https://pic4.zhimg.com/v2-89282090b652b2f61fde5490720e0a1f_r.jpg)

## Lecture4 Camera Calibration

第四章首先复习了前面坐标变换的内容，然后讲解了齐次坐标系和齐次变换，以及镜头畸变矫正和相机标定的原理和步骤。

[Lecture4_Camera_Calibration (wolai.com)](https://www.wolai.com/7oCq5YZSyF9KPwuhnEdeaq)

![img](https://pic3.zhimg.com/v2-ba7305a69e9ec9498e7ad07fcf98a4aa_r.jpg)

![img](https://pic4.zhimg.com/v2-55bf9182e029327e9196dd204a8a989f_r.jpg)

![img](https://pic1.zhimg.com/v2-32cd2f99e4708dbe3d5373ada03a8bd4_r.jpg)

## Lecture5 Epipolar Geometry (I) 对极几何

先介绍一下Ran.F 组织的会议/竞赛——[AVVision](https://link.zhihu.com/?target=https%3A//avvision.xyz/).

> The Autonomous Vehicle Vision (AVVision) Community aims to bring together industry professionals and academics to brainstorm and exchange ideas on the advancement of visual environment perception for autonomous driving.

第五章和第六章难度稍大，但是也极其重要！主要讲了奇异值分解和**对极几何模型**，其中重点介绍3个矩阵——Essential matrix , Fundamental matrix ,homography matrix。这部分数学推导居多，建议手推一遍。

[Lecture5_Epipolar_Geometry_(I)_对极几何 (wolai.com)](https://www.wolai.com/qgQXf2q2Ce6RnJbsZqB9qo)



![img](https://pic1.zhimg.com/v2-bfc91594813c814ea910fa2f15a0cbf4_r.jpg)

![img](https://pic1.zhimg.com/v2-f493c792db697244ef732d32fb73c648_r.jpg)

![img](https://pic4.zhimg.com/v2-6ed2123463f336d6b1eb5fe830ff4d93_r.jpg)

## Lecture6 Epipolar Geometry (II) 对极几何

第六章是对极几何的第二部分，前面3、4、5章的知识都作为预备知识。这里引入了三角化（三维重建会用到），然后介绍Stereopsis 立体视觉以及双目相机的校正（**重要**）。

[Lecture6_Epipolar_Geometry_(II)_对极几何 (wolai.com)](https://www.wolai.com/7YkPpFLSgeqmhiUX5q3o2W)



![img](https://pic4.zhimg.com/v2-292acc005f46c268d8b44d99d6f52f17_r.jpg)

![img](https://pic2.zhimg.com/v2-03fb1d7f1c1f9d1e0d872e0c6c0e885d_r.jpg)

![img](https://pic4.zhimg.com/v2-68faa127f57e94ef543ef90a7b4f47ff_r.jpg)

## Lecture7 Image Filtering

第七章开始介绍传统的图像处理内容。介绍了梯度、卷积等知识，以及常用的卷积核如拉普拉斯核、高斯核等。图像处理操作如锐化、模糊、高斯滤波、双边滤波、中值滤波等，最后介绍了卷积神经网络。

> 图像处理无非就是用一些卷积核把图像卷来卷去。

[Lecture7_Image_Filtering (wolai.com)](https://www.wolai.com/gdxNYTCvPvGknFpEK6Rj5h)



![img](https://pic2.zhimg.com/v2-f68400d7fcb5063c632f8b09b6ea31f1_r.jpg)

![img](https://pic1.zhimg.com/v2-136c34495cce0174d4c767665eb044c8_r.jpg)

![img](https://pic3.zhimg.com/v2-5c9d49f45f821140ada0df578aad45ba_r.jpg)

## Lecture8 Image Pyramid 图像金字塔

第八章以图像金字塔为中心，讲解了降采样（和池化）、上采样、等等操作，内容相对简单。在图像处理中，一般会先降采样把图片大小降下来再处理，加快处理速度。上采样会产生一个“模糊化”的图像，因此我们需要超分辨率算法（super-resolution algorithm）去得到高质量图像。其中GAN网络是最常用的技术，Lecture14 IPMV with Deep Learning会讲。

[Lecture8_Image_Pyramid_图像金字塔 (wolai.com)](https://www.wolai.com/2eYQAitSZE1bX7YtH89fqJ)

![img](https://pic4.zhimg.com/v2-def4e9967d4534395a1a495bca0549ab_r.jpg)

![img](https://pic4.zhimg.com/v2-8f37aeef5b52470e743acb00fc8de48b_r.jpg)

![img](https://pic3.zhimg.com/v2-26d511b0bb6187ef3d812a54cde811ba_r.jpg)

## Lecture9 Edges & Lines

第9章主要介绍边缘检测和线检测。其中边缘检测介绍了检测算子Sobel,Prewitt, Scharr，Canny等，线检测介绍了霍夫变换算法和应用，常用于车道线检测，对自动驾驶感兴趣的同学不要错过哦~

[Lecture9_Edges_&_Lines (wolai.com)](https://www.wolai.com/e4mcdqsMANmmjBbBf1yZXh)



![img](https://pic2.zhimg.com/v2-6e78dc599374ac1bd96d36519b7a5671_r.jpg)

![img](https://pic3.zhimg.com/v2-82950a52a911a764cb55416c950e49b2_r.jpg)

![img](https://pic4.zhimg.com/v2-7474b5cedef864af0986602f05d7d84b_r.jpg)

## Lecture10 Interest Points

第10章又来到一个相对硬核的内容，内容丰富，可以当成2章来看。本章讲了角点检测，斑点检测， 关键点检测，最后重点讲了SIFT的原理。本章用途十分广泛。

> 兴趣点检测是计算机视觉系统中用于提取特定特征和推断图像内容的一种方法。这种技术经常用于图像动作感应、图像配准、视频跟踪、图像拼接、全景图像拼接、三维重建等。

[Lecture10_Interest_Points (wolai.com)](https://www.wolai.com/pB9SjCiNrTPYNgVXtZASzK)



![img](https://pic4.zhimg.com/v2-c832866a9488b2e51bfbf55bafa47b53_r.jpg)

![img](https://pic4.zhimg.com/v2-f8442d21f619d662e6c5206cbd159a73_r.jpg)

![img](https://pic1.zhimg.com/v2-5336e46a2ab172d5307553af04eab02c_r.jpg)

## Lecture11 Stereo Matching

第11章是本课程的核心内容之一，使用双目相机构建深度图。视差，简单来说就是两张图片的像素亮度差（AD绝对差或SD平方差）。得到视差图的4个步骤——代价计算，视差计算，视差优化以及视差改善。视差匹配算法有局部算法和全局算法，局部算法有SAD,SSD,NCC等，全局算法一般采用马尔科夫链作为几何模型。典型算法是半全局算法SGM,Semi-global matching，OpenCV里面称为SGBM.**做视差匹配，重点在于速度和精度的平衡。**

> *这一个*Lecture的内容十分的丰富，可以当作两个Lecture来看。
> （怎么还不学？快学！！）

[Lecture11_Stereo_Matching (wolai.com)](https://www.wolai.com/i2P57ezSqoEJ8kWoUojhGG)



![img](https://pic1.zhimg.com/v2-e1afad64be3dcdbe84d6632a77a9970c_r.jpg)

![img](https://pic4.zhimg.com/v2-4d5637abfee1cb4c5ceff336bac58653_r.jpg)

![img](https://pic3.zhimg.com/v2-e4366fc2e029aef5445c78cc1421f87a_r.jpg)

## Lecture12 Motion 光流

第12章介绍光流，CV方面比较前沿的研究。介绍了光流的原理，孔径问题以及FlowNet等。

[Lecture12_Motion_光流 (wolai.com)](https://www.wolai.com/b5LFk3AeTeLZsmxBPPvMrL)



![img](https://pic1.zhimg.com/v2-ad33821c141775bfbaeecedee2de11b8_r.jpg)

![img](https://pic4.zhimg.com/v2-020fda55576bf6f4b8972dc691668913_r.jpg)

![img](https://pic4.zhimg.com/v2-3ed529d4eae008d5743bcf1128b519df_r.jpg)

## Lecture13 SfMand SLAM

第13章介绍了现在很火的SLAM，Simultaneous localization and mapping 即时定位与地图构建。SLAM是一个机器人应用，通常用于自动驾驶汽车、移动机器人和无人机，获取它们的位置并构建一个全局环境地图。另一部分是Structure from motion (SfM)，比如可以用一堆游客的照片来重建罗马。最后带了一点自运动估计。

> Sfm : 侧重struction
> SLAM ： 侧重location ，评估真实轨迹和估计轨迹的相似度

[Lecture13_Sfm_and_SLAM (wolai.com)](https://www.wolai.com/t5oWF237zihMwqtp2BfR8c)



![img](https://pic3.zhimg.com/v2-60766941e537782ef000f2a3eb8c9102_r.jpg)

![img](https://pic3.zhimg.com/v2-ec752719f1f857c5345b685c3a86ee26_r.jpg)

![img](https://pic4.zhimg.com/v2-168f047f166f98d549c9e74a56821123_r.jpg)

阅读材料有

- Structure from Motion (CVPR’16):[Structure from Motion (CVPR’16)](https://link.zhihu.com/?target=https%3A//www.cv-foundation.org/openaccess/content_cvpr_2016/papers/Schonberger_Structure-From-Motion_Revisited_CVPR_2016_paper.pdf)
- Review of visual odometry: [Review of visual odometry](https://link.zhihu.com/?target=https%3A//springerplus.springeropen.com/articles/10.1186/s40064-016-3573-7)

## Lecture14 IPMV with Deep Learning

第14章讲了机器学习在CV方面的应用，当前CV的研究几乎离不开深度学习。讲了4个主要的应用，图像分类、目标检测、语义分割、GAN网络。

比如现在有一个训练好的分类网，怎么做物体检测？让你去做，你有什么思路？

> 滑动窗口，比如用一个244x244的窗口去滑动，送到分类网里面。好的结果的位置就是物体的框。没毛病，是不是？事实上也是这么做的。

[Lecture14_IPMV_with_Deep_Learning (wolai.com)](https://www.wolai.com/6C8HTqeN8HbSiMP63oVBwQ)

![img](https://pic1.zhimg.com/v2-8a5605dc3fb1eea6e3a34b77c2c3cef8_r.jpg)Image classfication by 李宏毅-机器学习

![img](https://pic2.zhimg.com/v2-43c55c312f07dc474288334a59474bb5_r.jpg)Object detection for autonomous driving

![img](https://pic2.zhimg.com/v2-fc55ef21d9a712152c337cc46c4c2779_r.jpg)Semantic Segentation

![img](https://pic1.zhimg.com/v2-a3d4df40cf58ff1614cd97995e6f8120_r.jpg)GAN

本章内容在当前不管是学术还是工业都很火，相信同学也很感兴趣。这里列一下阅读材料。

### Image classification

- Image classification tutorial:

- - [https://www.cs.cornell.edu/courses/cs5670/2019sp/lectures/lec20_image_classification.pdf](https://link.zhihu.com/?target=https%3A//www.cs.cornell.edu/courses/cs5670/2019sp/lectures/lec20_image_classification.pdf)

- Vision Transformer:

- - [https://arxiv.org/pdf/2010.11929.pdf](https://link.zhihu.com/?target=https%3A//arxiv.org/pdf/2010.11929.pdf)

- Image classification with MATLAB:

- - [https://www.mathworks.com/products/image.html](https://link.zhihu.com/?target=https%3A//www.mathworks.com/products/image.html)

- Image classification with PyTorch:

- - [https://pytorch.org/tutorials/beginner/blitz/cifar10_tutorial.html](https://link.zhihu.com/?target=https%3A//pytorch.org/tutorials/beginner/blitz/cifar10_tutorial.html)

- ImageNet:

- - [https://www.image-net.org/](https://link.zhihu.com/?target=https%3A//www.image-net.org/)

### Object Detection

- PyTorch tutorial:

- - [https://pytorch.org/tutorials/intermediate/torchvision_tutorial.html](https://link.zhihu.com/?target=https%3A//pytorch.org/tutorials/intermediate/torchvision_tutorial.html)

- Deep learning-based object detection survey:

- - 10.1109/TNNLS.2018.2876865

- 3D object detection survey:

- - 10.1016/j.patcog.2022.108796

- Video object detection survey:

- - 10.1109/TNNLS.2021.3053249

### Semantic Segentation

- PyTorch code:

- - [https://github.com/CSAILVision/semantic-segmentation-pytorch](https://link.zhihu.com/?target=https%3A//github.com/CSAILVision/semantichttps%3A//github.com/CSAILVision/semantic-segmentation-pytorch)

- Semantic segmentation survey:

- - [https://arxiv.org/pdf/2001.05566.pdf](https://link.zhihu.com/?target=https%3A//arxiv.org/pdf/2001.05566.pdf)

- SNE-RoadSeg:

- - [https://arxiv.org/pdf/2008.11351.pdf](https://link.zhihu.com/?target=https%3A//arxiv.org/pdf/2008.11351.pdf)

- SNE-RoadSeg+:

- - [https://arxiv.org/pdf/2107.14599.pd](https://link.zhihu.com/?target=https%3A//arxiv.org/pdf/2107.14599.pd)

### Generative Adversarial Network

- CycleGAN:

- - [https://junyanz.github.io/CycleGAN/](https://link.zhihu.com/?target=https%3A//junyanz.github.io/CycleGAN/)

- DCGAN:

- - [https://github.com/tensorflow/docs/blob/master/site/en/tutorials/generative/dcgan.ipynb](https://link.zhihu.com/?target=https%3A//github.com/tensorflow/docs/blob/master/site/en/tutorials/generative/dcgan.ipynb)

- GAN Survey:

- - [https://dl.acm.org/doi/abs/10.1145/3463475](https://link.zhihu.com/?target=https%3A//dl.acm.org/doi/abs/10.1145/3463475)

## HW--StereoCamera

本章是做课程大作业的日志。课程大作业有三维重建、双目视觉等，我和搭档璞选的是双目视觉（得到深度图）。

[HW--StereoCamera (wolai.com)](https://www.wolai.com/bzHeqD5YV2G6t3N1c6eodu)

数据集网站：

- [vision.middlebury.edu/stereo/data](https://link.zhihu.com/?target=https%3A//vision.middlebury.edu/stereo/data/)
- [The KITTI Vision Benchmark Suite (cvlibs.net)](https://link.zhihu.com/?target=http%3A//www.cvlibs.net/datasets/kitti/eval_scene_flow.php%3Fbenchmark%3Dstereo)

本次大作业，我们实现了相机畸变校正、立体校正得到了对极线对齐后的图像，接着我们实现了局部算法SAD、SSD、NCC以及经典（半）全局算法SGBM，以及后处理步骤如亚像素增强、一致性检查、移除小连通区、视差填充和中值滤波，并且实现了并行加速如omp。最后将视差图转为深度图，三维重建（输出点云图）。

没有双目相机，用手机拍照片，然后利用光流法进行外参自整定，也算是一个小小的创新。后面会更新在gitee仓库。

大作业高分原则：

- 速度越快
- 精度越高
- 调的库越少，手写的方法越多

![img](https://pic2.zhimg.com/v2-916cfd47e544089ee25686e07fbd5279_r.jpg)

![img](https://pic1.zhimg.com/v2-5048b5a2ee5e634c313ce73a85df7864_r.jpg)

![img](https://pic2.zhimg.com/v2-2eb1538bd0339b88dc7a5c3c0aa70e29_r.jpg)

做了作业（实践）才能对理论内容有更深刻的掌握。

## Summary

本章是课程小结，主要理了一下课程的结构和重点。我在文章开头课程大纲处就已经列了出来。本课程到此就结束啦。收获还是蛮大的，CV对我们的生活产生了巨大的影响，也算入个门。

[Summary (wolai.com)](https://www.wolai.com/5Wmmu2pgzt3uioegnTrZ2f)

Ran.F 说他大四上接触CV，当时就觉得找到了自己愿意奋斗一生的事业，这里也祝同学们——

> **愿你找到自己愿意为之奋斗一生的事业！**

如果觉得有所帮助，欢迎点赞、收藏、转发走起来！

## 参考文献：

[1] Hirschmuller H. Stereo processing by semiglobal matching and mutual information[J]. IEEE Transactions on pattern analysis and machine intelligence, 2007, 30(2): 328-341.

[2] Wang H, Fan R, Cai P, et al. PVStereo: Pyramid voting module for end-to-end self-supervised stereo matching[J]. IEEE Robotics and Automation Letters, 2021, 6(3): 4353-4360.

[3] [https://www.ruirangerfan.com/pdf/cvapp2022_fan.pdf](https://link.zhihu.com/?target=https%3A//www.ruirangerfan.com/pdf/cvapp2022_fan.pdf)

[4] Zabih R, Woodfill J. Non-parametric local transforms for computing visual correspondence[C]//European conference on computer vision. Springer, Berlin, Heidelberg, 1994: 151-158.

[5] [https://www.cnblogs.com/riddick/p/8486223.html](https://link.zhihu.com/?target=https%3A//www.cnblogs.com/riddick/p/8486223.html) 真实场景的双目立体匹配（Stereo Matching）获取深度图详解

[6] [https://ethanli.blog.csdn.net/article/details/105065660](https://link.zhihu.com/?target=https%3A//ethanli.blog.csdn.net/article/details/105065660) 【立体匹配系列】经典SGM：李迎松

[7] [https://www.jianshu.com/p/b5ee34507166](https://link.zhihu.com/?target=https%3A//www.jianshu.com/p/b5ee34507166) 初识立体匹配算法

[![水云身](https://pica.zhimg.com/v2-94b6ab6c03774e3973691cb2af2329e1_xs.jpg?source=172ae18b)](https://www.zhihu.com/people/yang-yang-20-27-99)

[水云身](https://www.zhihu.com/people/yang-yang-20-27-99)

作者：https://www.zhihu.com/people/yang-yang-20-27-99

原答案：https://zhuanlan.zhihu.com/p/532044251

<iframe src="chrome-extension://fhaefmiaghgdaciliiiflaoiknhibkmo/translate-card.html" id="relingo-translate-card" class="relingo-translate-card" style="position: fixed; opacity: 0; z-index: -9999; transform: translateY(-8px); transition: opacity 0.1s ease-in-out 0.1s, z-index 0.1s ease-in-out 0.1s, transform 0.1s ease-in-out 0.1s, box-shadow 0.1s ease-in-out 0.1s, -webkit-transform 0.1s ease-in-out 0.1s; bottom: 10px; background: none; border: none; backdrop-filter: blur(6px); width: 262px; border-radius: 8px; overflow: hidden; color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"></iframe>