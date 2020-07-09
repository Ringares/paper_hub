## Toc
- [[W&D 2016]](#wd-2016--pdf--semanticscholar-)
- [[Deep&Cross Network (DCN) 2017]](#deepcross-network-dcn-2017--pdf--semanticscholar-)

---

### [W&D 2016] | [pdf](https://arxiv.org/pdf/1606.07792.pdf) | [semanticscholar](https://www.semanticscholar.org/paper/Wide-%26-Deep-Learning-for-Recommender-Systems-Cheng-Koc/657fbf29ea0b4904a3e98d1556f9acf38dddae5f) |

> *Cheng, H., Koc, L., Harmsen, J., Shaked, T., Chandra, T., Aradhye, H., Anderson, G., Corrado, G.S., Chai, W., Ispir, M., Anil, R., Haque, Z., Hong, L., Jain, V., Liu, X., & Shah, H. (2016). Wide & Deep Learning for Recommender Systems. DLRS 2016.*

<img src="https://tva1.sinaimg.cn/large/007S8ZIlgy1ggbgkbue4ij30yp08ead6.jpg" width="70%"/>

<br>

**Summary**

- Wide(Memorization) + Deep(Generalization)
- wide 部分由和业务知识相关的特征的 cross-product transformation 构成 (wide 部分放哪些特征需要好好研究 (值得被记忆的? 具有相关性的?))
- 系统实现 data generation 部分: 
  - 样本是来自 Google App 安装与曝光数据
  - 在 data generation 阶段计算类别型特征的离散化映射表
  - 实数稠密特征进行分桶归一
- 系统实现 model training 部分: 
  - Wide 部分用 FTRL L1 训练 (追求稀疏性), Deep 部分用 AdaGrad 训练
  - embed_size=32
  - 500 billion examplel
  - 新数据训练时用老模型初始化新模型 (warm-starting)
- 系统实现 model serving 部分: 
  - 并行推理

<br>

**Question**

- Q: 文中 cross-product transformation 计算 User installed app 和 impression app (候选物品) 的共现关系, 怎么对 User installed app 进行处理的? 因为一个用户会有很多已安装的应用
  - 一种做法是大规模稀疏的 multihot 表达,  User installed app 这是一组特征, 每个特征是物品库里的一个物品, 取值 0/1 (binary 特征)

<br>

**Additinal Resource**

- [王喆 <见微知著，你真的搞懂Google的Wide&Deep模型了吗？>](https://zhuanlan.zhihu.com/p/142958834)

---

- **[Deep Crossing 2016] |[pdf](https://www.kdd.org/kdd2016/papers/files/adf0975-shanA.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Deep-Crossing%3A-Web-Scale-Modeling-without-Manually-Shan-Hoens/a83c778e918539941cba9dcaa6ec881b3ae7a29a)|**
  - `Microsoft`, `Using Multiple Residual Units`, `ONLY deep part`
  - *Shan, Ying et al. “Deep Crossing: Web-Scale Modeling without Manually Crafted Combinatorial Features.” Proceedings of the 22nd ACM SIGKDD International Conference on Knowledge Discovery and Data Mining (2016): n. pag.*
  - <img src="https://tva1.sinaimg.cn/large/007S8ZIlgy1ggb8u08dasj30qc0mkq5g.jpg" width="40%"/>

---
### [Deep&Cross Network (DCN) 2017] | [pdf](https://arxiv.org/pdf/1708.05123.pdf) | [semanticscholar](https://www.semanticscholar.org/paper/Deep-%26-Cross-Network-for-Ad-Click-Predictions-Wang-Fu/f37a3264f720700dcc5175d6f4ca7cfde4ec845e) |

> *Wang, Ruoxi et al. “Deep & Cross Network for Ad Click Predictions.” ArXiv abs/1708.05123 (2017): n. pag.*

<img src="https://tva1.sinaimg.cn/large/007S8ZIlgy1ggb8uvx36sj30rq0u40yr.jpg" width="40%"/>

<br>

**Summary**

- cross network structure which more efficient in learning **certain bounded-degree** feature interactions.
- low computational cost (linear to the input dims), memory efficient, easy to implement
- 
- 系统实现 data generation 部分: 
  - 利用 Criteo Display Ads Data 训练, **41 million**  data
  - 总共7天数据, 前6天作为 train_set, 第7天的数据均分成 vali_set, test_set
  - Real-valued features are normalized by applying a log transform
  - categorical features embeded by **6×(category cardinality)^(1/4)**
- 系统实现 model training 部分: 
  - jointly train both cross and deep networks with **Adam**
  - batch size 512
  - **Batch normalization was applied** to the deep network and **gradient clip norm was set at 100**
  - used **early stopping**, as we **did not find L2 regularization or dropout to be effective**
  - We report results based on a **grid search** over the number of hidden layers, hidden layer size, initial learning rate and number of cross layers
- 实验说明:
  - compared with FM, Deep, LR, DeepCrossing


<br>

**Question**

- Q: Why the cross network is memory efficient?
  - CrossNetwork 参数少, 与输入维度线性相关; 还体现了 FM 类似的共享参数, 实现多项式形式的特征交叉

<br>

**Additinal Resource**

- Todo

---


- **[PNN (IPNN, OPNN) 2017] |[pdf](https://arxiv.org/pdf/1611.00144.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Product-Based-Neural-Networks-for-User-Response-Qu-Cai/65455368b4ff0aa8886245c093346c66ff74bb0a)|**
  - *Qu, Y., Cai, H., Ren, K., Zhang, W., Yu, Y., Wen, Y., & Wang, J. (2016). Product-Based Neural Networks for User Response Prediction. 2016 IEEE 16th International Conference on Data Mining (ICDM), 1149-1154.*
  - <img src="https://tva1.sinaimg.cn/large/007S8ZIlgy1ggb8rso1ktj30ei0baq45.jpg" width="30%"/>
- **[NCF 2017] |[pdf](https://arxiv.org/pdf/1708.05031.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Neural-Collaborative-Filtering-He-Liao/ad42c33c299ef1c53dfd4697e3f7f98ed0ca31dd)|**
  - *He, X., Liao, L., Zhang, H., Nie, L., Hu, X., & Chua, T. (2017). Neural Collaborative Filtering. Proceedings of the 26th International Conference on World Wide Web.*
  - <img src="https://tva1.sinaimg.cn/large/007S8ZIlgy1ggb8p3tnw6j30e508uq3x.jpg" width="40%"/>
- **[DIN 2018] |[pdf](https://arxiv.org/pdf/1706.06978.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Deep-Interest-Network-for-Click-Through-Rate-Zhou-Song/b8c6ccd5c1eb4f9837fc4877d27e55b7349781be)|**
  - *Zhou, G., Song, C., Zhu, X., Ma, X., Yan, Y., Dai, X., Zhu, H., Jin, J., Li, H., & Gai, K. (2018). Deep Interest Network for Click-Through Rate Prediction. Proceedings of the 24th ACM SIGKDD International Conference on Knowledge Discovery & Data Mining.*
  - <img src="https://tva1.sinaimg.cn/large/007S8ZIlgy1ggb8r2n2gnj30vp0avgo9.jpg" width="80%"/>

```
### [Abstract] | [pdf]() | [semanticscholar]() |

> *cite:*

<img />

<br>

**Summary**

- Todo

<br>

**Question**

- Todo

<br>

**Additinal Resource**

- Todo

---

```
