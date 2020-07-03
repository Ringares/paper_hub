- **[W&D 2016] |[pdf](https://arxiv.org/pdf/1606.07792.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Wide-%26-Deep-Learning-for-Recommender-Systems-Cheng-Koc/657fbf29ea0b4904a3e98d1556f9acf38dddae5f)|**
  - ```
    - Wide(Memorization) + Deep(Generalization)
    - wide 部分由和业务知识相关的特征的 cross-product transformation 构成 (wide 部分放哪些特征需要好好研究 (值得被记忆的? 具有相关性的?))
    - 系统实现 data generation 部分: 样本是来自 Google App 安装与曝光数据; 在 data generation 阶段计算类别型特征的离散化映射表, 实数稠密特征进行分桶归一
    - 系统实现 model training 部分: embed_size=32; 500 billion examplel; 新数据训练时用老模型初始化新模型 (warm-starting)
    - 系统实现 model serving 部分: 并行推理
    ```
  - *Cheng, H., Koc, L., Harmsen, J., Shaked, T., Chandra, T., Aradhye, H., Anderson, G., Corrado, G.S., Chai, W., Ispir, M., Anil, R., Haque, Z., Hong, L., Jain, V., Liu, X., & Shah, H. (2016). Wide & Deep Learning for Recommender Systems. DLRS 2016.*
  - <img src="https://tva1.sinaimg.cn/large/007S8ZIlgy1ggbgkbue4ij30yp08ead6.jpg" width="80%"/>
- **[Deep Crossing 2016] |[pdf](https://www.kdd.org/kdd2016/papers/files/adf0975-shanA.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Deep-Crossing%3A-Web-Scale-Modeling-without-Manually-Shan-Hoens/a83c778e918539941cba9dcaa6ec881b3ae7a29a)|**
  - `Microsoft`, `Using Multiple Residual Units`, `ONLY deep part`
  - *Shan, Ying et al. “Deep Crossing: Web-Scale Modeling without Manually Crafted Combinatorial Features.” Proceedings of the 22nd ACM SIGKDD International Conference on Knowledge Discovery and Data Mining (2016): n. pag.*
  - <img src="https://tva1.sinaimg.cn/large/007S8ZIlgy1ggb8u08dasj30qc0mkq5g.jpg" width="40%"/>
- **[Deep&Cross Network (DCN) 2017] |[pdf](https://arxiv.org/pdf/1708.05123.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Deep-%26-Cross-Network-for-Ad-Click-Predictions-Wang-Fu/f37a3264f720700dcc5175d6f4ca7cfde4ec845e)|**
  - `Cross Network for the wide part`
  - *Wang, Ruoxi et al. “Deep & Cross Network for Ad Click Predictions.” ArXiv abs/1708.05123 (2017): n. pag.*
  - <img src="https://tva1.sinaimg.cn/large/007S8ZIlgy1ggb8uvx36sj30rq0u40yr.jpg" width="40%"/>
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
- **[Abstract] |[pdf]()|[semanticscholar]()|**
  - *cite:*
```
