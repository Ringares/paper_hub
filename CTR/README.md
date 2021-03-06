## Toc
- [[W&D 2016]](#wd-2016--pdf--semanticscholar-)
- [[Deep&Cross Network (DCN) 2017]](#deepcross-network-dcn-2017--pdf--semanticscholar-)
- [[PNN 2017]](#pnn-2017)


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
- cross network make a "Polynomial Approximation" : `Todo`
- cross network is a "Generalization of FM": 两个特征的高阶交叉所用到的参数也是共享的, 也是分别特征对应的每一层的参数相乘之后得到 (类似与 FM, 各特征分量上的参数, 通过计算(点积)得到交叉后的参数)
- cross network achieve "Efficient Projection": $x _{0} x _{l}^{T} w _{l}$ 的设计, 实际上是把 d^2 个交叉项映射回 d 个维度上, 通常需要 (d^2, d) 的投影矩阵, 但这里只用 d 个参数 就实现了, 因此比较高效
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
  - CrossNetwork 参数少, 与输入维度线性相关; 在多项式形式的特征交叉上, 还体现了 FM 类似的共享参数
- Q: 通过 cross network 来捕获显式的特征组合有什么有点
  - 简单, 参数少, 高阶组合特征 (受 cn 的层数控制)

<br>

**Additinal Resource**

- Todo 

---

### [PNN 2017] 

- original 会议版本 (IPNN, OPNN) 2017 [pdf](https://arxiv.org/pdf/1611.00144.pdf) | [semanticscholar](https://www.semanticscholar.org/paper/Product-Based-Neural-Networks-for-User-Response-Qu-Cai/65455368b4ff0aa8886245c093346c66ff74bb0a) |
  - > *Qu, Y., Cai, H., Ren, K., Zhang, W., Yu, Y., Wen, Y., & Wang, J. (2016). Product-Based Neural Networks for User Response Prediction. 2016 IEEE 16th International Conference on Data Mining (ICDM), 1149-1154.*
  - <img src="https://tva1.sinaimg.cn/large/007S8ZIlgy1ggb8rso1ktj30ei0baq45.jpg" width="30%"/>
  - <img src="https://tva1.sinaimg.cn/large/007S8ZIlly1ggsyd34mjsj318g0eqjx2.jpg" width=75%>
- extended version 期刊版本 (KPNN, PIN) 2017 [pdf](https://arxiv.org/pdf/1807.00311.pdf) | [semanticscholar](https://www.semanticscholar.org/paper/Product-Based-Neural-Networks-for-User-Response-Qu-Fang/ec87bf9b1423a6598d0ea43d7fb9f6db0fd6305b) |
  - > *Qu, Y., Fang, B., Zhang, W., Tang, R., Niu, M., Guo, H., Yu, Y., & He, X. (2019). Product-Based Neural Networks for User Response Prediction over Multi-Field Categorical Data. ACM Transactions on Information Systems (TOIS), 37, 1 - 35.*
  - <img src="https://tva1.sinaimg.cn/large/007S8ZIlly1ggsyctqy09j314w0eomyj.jpg" width=75%/>

<br>

**Summary**
- 会议版本 和期刊版本的不同之处在于 会议版本指定了 product layer 的输出长度, 因此需要有额外的
- 期刊版本中提到 `sparse L2 regularization` 代替 `L2 regularization`, 进行 latent vector 进行惩罚, 原因是对于非常稀疏的输入, 每一条样本都会对所有的参数进行 L2 Reg 惩罚的更新, 代价比较大, 可以考虑只对参与前向传播的 vector 参数进行更新
- 期刊版本中提到 kernel production 可以代表 inner product 和 outer product
  - 当 kernel matrix 是 单位矩阵 I 的话, 就相当于 p, q 的 inner product
  - 当 kernel matrix 是 [d,d] 矩阵, 就相当于 outer product
  - <img src="https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fring%2Fx6ac178JX0.png?alt=media&token=6b04d66e-3708-425a-9dd2-8272f3e08565" width="20%"> 
- 期刊版本中 KPNN, 作者代码中实现了三种 kernel 形式 的 kernel product. 分别是 `mat`, `vec`, `num`
  - mat : `[k,1,d] @ **[k,d,d]** @ [k,d,1]` -> [k]
  - vec: `sum([k,d] * [k,d] * **[k,d]**, dim=-1)` -> [k]
  - num: `sum([k,d] * [k,d] * **[k,1]**, dim=-1)` -> [k]
  - >@ 矩阵乘, * 按位乘; The default type is mat, and you can switch to other types to save time and memory
- 会议版本
  - data generation
      - Each data sample consists of multiple fields of categorical data, All the information is represented as a multi-field categorical feature vector, where each field (e.g.City) is one-hot encoded
      - Criteo 1TB click log
          - 下采样后 79.38 million 样本, 1.64 million feature dimensions
  - model training
      - Inspired by Net2Net, we can firstly train a part of PNN (e.g., the FNN or FM part) as the initialization, and then start to let the back propagation go over the whole net. The resulted PNN should at least be as good as FNN or FM.
      - we use (sparse) L2 regularization to penalize embedding vectors, and we use dropout, LN, and SELU to regularize DNNs.
- 期刊版本
  - data generation: 用了 Criteo, Avazu, iPinYou, Huawei 的广告数据集
  - 和会议版本不同的是, 其中提到 FM pre-training 的作用
    - >From this figure, we find FM pre-training does not always produce better results compared with random initialization. Thus we believe the initialization of embedding vectors depends on datasets, which we leave as future work.
<br>

**Question**

- Todo

<br>

**Additinal Resource**

- Implementation: 
  - Original version 
    - https://github.com/nzc/dnn_ctr/blob/master/model/PNN.py
    - https://github.com/JianzhouZhan/Awesome-RecSystem-Models/blob/master/Model/PNN_TensorFlow.py
  - extended version 
    - https://github.com/Atomu2014/product-nets/blob/master/python/models.py
    - https://github.com/rixwew/pytorch-fm
  - discuss about impl version https://github.com/rixwew/pytorch-fm/pull/7
- [PNN论文笔记](https://zhuanlan.zhihu.com/p/105084140)

---

### [NCF 2017] | [pdf](https://arxiv.org/pdf/1708.05031.pdf) | [semanticscholar](https://www.semanticscholar.org/paper/Neural-Collaborative-Filtering-He-Liao/ad42c33c299ef1c53dfd4697e3f7f98ed0ca31dd) |

> *He, X., Liao, L., Zhang, H., Nie, L., Hu, X., & Chua, T. (2017). Neural Collaborative Filtering. Proceedings of the 26th International Conference on World Wide Web.*

<img src="https://tva1.sinaimg.cn/large/007S8ZIlgy1ghdnry0wgzj30wm0hq447.jpg" width="70%"/>

<br>

**Summary**

- focus on the pure collaborative filtering setting, therefore use **only ids** of users and items
- 提出 NCF 的框架
- 提出 **GMF** (Generalized Matrix Factorization)
  - <img src="https://tva1.sinaimg.cn/large/007S8ZIlgy1ghdp9f5l2ij30ae01udfu.jpg" width="20%">
- 提出 GMF 和 MLP 的混合模型 (aka. NeuMF)
  - 可以预训练 两个单独的模型
  - 两个模型可以有各自的 embedding 表达
- **Experiment**
    - 公开数据集 MovieLens 
        - one million rating, where each user has at least 20 ratings
        - transformed it into implicit data, where each entry is marked as 0 or 1 indicating whether the user has rated the item.
    - Pinterest
        - 过滤, 和 MovieLens 一样只保留 最少有 20 interactions 的用户
- >Note on tuning NeuMF: our experience is that for small predictive factors, running NeuMF without pre-training can achieve better performance than GMF and MLP. For large predictive factors, pre-training NeuMF can yield better performance (may need tune regularization for GMF and MLP). --via https://github.com/hexiangnan/neural_collaborative_filtering
<br>

**Question**

- Todo

<br>

**Additinal Resource**

- 作者 Implementation: https://github.com/hexiangnan/neural_collaborative_filtering


---

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
