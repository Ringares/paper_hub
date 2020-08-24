
### [Embedding-based Retrieval Facebook 2020] | [pdf](https://arxiv.org/pdf/2006.11632.pdf) | [semanticscholar](https://www.semanticscholar.org/paper/Embedding-based-Retrieval-in-Facebook-Search-Huang-Sharma/06bf758b7e7fd675ceb2d008520db51631716d42) |

> *Huang, Jui-Ting et al. “Embedding-based Retrieval in Facebook Search.” ArXiv abs/2006.11632 (2020): n. pag.*


<img src='https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fring%2FJKpXU7osLG.png?alt=media&token=866430d2-5a04-4064-baec-2d6e835a2e3e' width='35%'>

<img src='https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fring%2Fi4_680FXfW.png?alt=media&token=c595780a-c7ea-446c-90d1-6cb5c8c0f5bb' width='40%'>

<br>

**Summary**

- 提出 **EBR** 的整体设计, 综合考虑了语义匹配和检索词匹配
    - 所谓 embedding retrieval 就是在学习得到的 embedding 空间中做 (近似)近邻检 
    - > In general, a search engine comprises a recall layer targeting to retrieve a set of relevant documents in low latency and computational cost, usually called **retrieval**, and a precision layer targeting to rank the most desired documents on the top with more complex algorithms or models, usually called **ranking**.
- 提出基于 **triplet loss** 的 **unified embedding model**
    - **unified embedding model**
      - 这个模型实际上由主要三部分组成, 使用 triplet loss 训练
        Query encoder: 特征抽取变为向量
        Document encoder: 特征抽取变为向量
        similarity function: cosine distance
    - triplet loss
      - triplet loss 是比较适合 recall 问题的目标函数 (loss function)
      - For a given triplet, $` \left(q^{(i)}, d_{+}^{(i)}, d_{-}^{(i)}\right) `$, 计算 query 和正负两个 document 的距离, 再加上 margin, 得到最终的 loss
      - cosine distance defined as $` \text{Distance}(Q,D) = 1-\cos \left(E_{Q}, E_{D}\right) `$
      - $` L=\sum_{i=1}^{N} \max \left(0, D\left(q^{(i)}, d_{+}^{(i)}\right)-D\left(q^{(i)}, d_{-}^{(i)}\right)+m\right) `$
- 实验了 unified embedding model 训练所需样本生成的不同方式
- 在 **简单负样本** 的基础上又提出了 **困难负样本** 的做法
- 提出具体的基于 faiss 做 embedding quantization, 然后结合 Boolean expression 的召回检索方案, 还有一些细节处理, 例如 **Query and Index Selection**, **Later-stage Optimization**


<br>

**Question**

- **Q: 为什么以这种形式选择负样本? 又有哪些问题? 针对其它场景适用么?**
    - 首先曝光后的数据可能更直观的认为是用户的真实反馈，更适合做负样本，但是这里牵扯到一个bias，
    召回阶段只是个粗排的过程，应该对全库物料一视同仁，而我们现在拿到的负样本，是经过排序之后呈现出的结果，
    并不符合我们的业务场景，导致数据分布其实是有偏差的。
    - 这种随机从物料库中选取的形式，因为是随机选取，匹配度低，在样本空间上，对模型而言，是很容易区分的。
    这也是论文中随机负采样形式召回率高的原因，但是，这样训练出来的模型，只能学到粗粒度上的差异，却无法感知到细微差别。
    论文中后来又提到hard negative，通过数据角度和模型角度提出不同方案来缓解这种问题。
    - 论文中的应用场景是针对搜索领域的，但论文中技术的形式跟推荐领域也是相匹配的。所以，推荐召回中，也是具备
    相同的问题，至于论文中和hard negative的不同方案，可能根据业务场景的不同，还需进一步校验才知道对当下是否有效。
- **Q: text 特征如何表达**
  - 参考原始 DSSM, 用了 word hashing
- **Q: location 特征是直接类别型么?**    
  - 是的, 包括 city, region, country, language 等
- **Q: 原文提到 re-train the relevance model, relevance model在文中只出现了这一次, 不太确定是什么意思. 可能是作为 negative sample 补充到 embedding model 的训练中去? 还是单独的判断 relevance 的分类模型?**
  - > In particular, we logged the results after enabling embedding-based retrieval, and then sent these results to human raters **to label whether they are relevant or not**. We used these human rated data **to re-train the relevance model** so that it can be used **to filter out the irrelevant results** from embedding-based retrieval while keeping the relevant ones.
  - ??? #todo
- **Q: 哪位大佬能解答一下呢，论文里说最好是两个hard negative，一个positive，然后又说easy与hard的比是100：1，那样本的正负比岂不是1：200，这不是严重的类别不平衡吗，为什么这个正负比没问题呢**
  - 因为用 triplet loss


<br>

**Additinal Resource**

- __负样本为王：评Facebook的向量化召回算法__ — via [负样本为王：评Facebook的向量化召回算法 - 知乎](https://zhuanlan.zhihu.com/p/165064102)

---

### [Airbnb Embedding 2018] | [pdf](https://astro.temple.edu/~tua95067/kdd2018.pdf) | [semanticscholar](https://www.semanticscholar.org/paper/Real-time-Personalization-using-Embeddings-for-at-Grbovic-Cheng/2553596e3b24444d309ae461da50370d58f1b807) |

> *Grbovic, Mihajlo and Haibin Cheng. “Real-time Personalization using Embeddings for Search Ranking at Airbnb.” Proceedings of the 24th ACM SIGKDD International Conference on Knowledge Discovery & Data Mining (2018): n. pag.*

<img />

<br>

**Summary**

- Todo

<br>

**Question**

- Todo

<br>

**Additinal Resource**

- __再评Airbnb的经典Embedding论文__ — via [再评Airbnb的经典Embedding论文 - 知乎](https://zhuanlan.zhihu.com/p/162163054)


---

### [BPR 2009] | [pdf](arxiv.org/pdf/1205.2618.pdf) | [semanticscholar](https://www.semanticscholar.org/paper/BPR%3A-Bayesian-Personalized-Ranking-from-Implicit-Rendle-Freudenthaler/db16e908246f32b60a6e0a8e27093aa145fbb1ed) |

> *Rendle, Steffen et al. “BPR: Bayesian Personalized Ranking from Implicit Feedback.” ArXiv abs/1205.2618 (2009): n. pag.*

<img />

<br>

**Summary**
- **Bayesian Personalized Ranking is a general framework. It can be used for any underlying models which can model the relationship between <u, i, j>.**
- use item pairs as training data and optimize for correctly **ranking item pairs** instead of **scoring single item**
- 定义优化问题 BPR-Opt 
  - to maximize the posterior probability $` p\left(\Theta \mid>_{u}\right) \propto p\left(>_{u} \mid \Theta\right) p(\Theta) `$
  - assume user act is iid, and each pair <i, j> for a specific user is also iid
    - $`p\left(>_{u} \mid \Theta\right)= \prod_{u \in U} p\left(>_{u} \mid \Theta\right)=\prod_{(u, i, j) \in D_{S}} p\left(i>_{u} j \mid \Theta\right) `$
  - define the probability that user prefer i over j as (with sigmoid):
      - $` p\left(i>_{u} j \mid \Theta\right):=\sigma\left(\hat{x}_{u i j}(\Theta)\right) `$
      - $` \hat{x}_{u i j}(\Theta) `$ ^^**can be any arbitrary real-valued function**^^
  - for priori part, a general prior density $$p(\Theta)$$ of a normal distribution is introduced
      - $` p(\Theta) \sim N\left(0, \Sigma_{\Theta}\right) `$
  - overall
      - $` \begin{aligned} BPR - OPT &:=\ln p\left(\Theta \mid>_{u}\right) \\ &=\ln p\left(>_{u} \mid \Theta\right) p(\Theta) \\ &=\ln \prod_{(u, i, j) \in D_{S}} \sigma\left(\hat{x}_{u i j}\right) p(\Theta) \\ &=\sum_{(u, i, j) \in D_{S}} \ln \sigma\left(\hat{x}_{u i j}\right)+\ln p(\Theta) \\ &=\sum_{(u, i, j) \in D_{S}} \ln \sigma\left(\hat{x}_{u i j}\right)-\lambda_{\Theta}\|\Theta\|^{2} \end{aligned} `$

- 如何训练 LearnBPR
  - training data set $` D_{S}:=\left\{(u, i, j) \mid i \in I_{u}^{+} \wedge j \in I \backslash I_{u}^{+}\right\} `$
    - training data as <u, i, j>, user u is assumed to prefer i over j
    - the positive case and negative case are antisymmetric (反对称的), thus we only need to consider the positive cases, which is Ds

  - a SGD based on bootstrap sampling of training triples
  - >we suggest to use a stochastic gradient descent algorithm that chooses the triples randomly (uniformly distributed). use a bootstrap sampling approach with replacement

<br>

**Question**

- Todo

<br>

**Additinal Resource**

- __BPR, Bayesian Personalized Ranking (BPR), extremely convenient BPR & Multiple Pairwise Ranking__ — via [RunlongYu/BPR_MPR: BPR, Bayesian Personalized Ranking (BPR), extremely convenient BPR & Multiple Pairwise Ranking](https://github.com/RunlongYu/BPR_MPR)

---

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