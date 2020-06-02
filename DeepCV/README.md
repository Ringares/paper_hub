## Architecture

- **[LeNet 1998] |[pdf](http://yann.lecun.com/exdb/publis/pdf/lecun-01a.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Gradient-based-learning-applied-to-document-LeCun-Bottou/162d958ff885f1462aeda91cd72582323fd6a1f4)|**
  - *LeCun, Yann et al. “Gradient-based learning applied to document recognition.” (1998).*
- **[AlexNet 2012] |[pad](https://nbviewer.jupyter.org/github/Ringares/paper_hub/blob/master/DeepCV/%5BAlexNet2012%5DalexImagenetClassificationWithDeepConvolutionalNeuralNetworks.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/ImageNet-Classification-with-Deep-Convolutional-Krizhevsky-Sutskever/abd1c342495432171beb7ca8fd9551ef13cbd0ff)|**
  - *Krizhevsky, Alex et al. “ImageNet Classification with Deep Convolutional Neural Networks.” NIPS (2012).*
- **[NIN 2014] |[pdf](https://arxiv.org/pdf/1312.4400.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Network-In-Network-Lin-Chen/5e83ab70d0cbc003471e87ec306d27d9c80ecb16)|**
  - *Lin, Min et al. “Network In Network.” CoRR abs/1312.4400 (2014): n. pag.*
- **[VGG 2015]|[pdf](https://nbviewer.jupyter.org/github/Ringares/paper_hub/blob/master/DeepCV/%5BVGG2015%5DVeryDeepConvolutionalNetworksForLargeScaleImageRecognition.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Very-Deep-Convolutional-Networks-for-Large-Scale-Simonyan-Zisserman/eb42cf88027de515750f230b23b1a057dc782108)|**
  - *Simonyan, Karen and Andrew Zisserman. “Very Deep Convolutional Networks for Large-Scale Image Recognition.” CoRR abs/1409.1556 (2015): n. pag.*
- **[GooLeNet 2015] |[pdf](https://arxiv.org/pdf/1409.4842.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Going-deeper-with-convolutions-Szegedy-Liu/e15cf50aa89fee8535703b9f9512fca5bfc43327)|**
  - *Szegedy, Christian et al. “Going deeper with convolutions.” 2015 IEEE Conference on Computer Vision and Pattern Recognition (CVPR) (2015): 1-9.*
- **[ResNet 2016] |[pdf](https://arxiv.org/pdf/1512.03385.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Deep-Residual-Learning-for-Image-Recognition-He-Zhang/2c03df8b48bf3fa39054345bafabfeff15bfd11d)|**
  - *He, Kaiming et al. “Deep Residual Learning for Image Recognition.” 2016 IEEE Conference on Computer Vision and Pattern 
  - **[Identity Mappings in Deep Residual Networks 2016] |[pdf](https://arxiv.org/pdf/1603.05027.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Identity-Mappings-in-Deep-Residual-Networks-He-Zhang/77f0a39b8e02686fd85b01971f8feb7f60971f80)|**
    - `propose full pre-activation structure for residual building blocks`
    - *He, Kaiming et al. “Identity Mappings in Deep Residual Networks.” ArXiv abs/1603.05027 (2016): n. pag.*
 
Recognition (CVPR) (2016): 770-778.*
- **[DenseNet 2017] |[pdf](https://arxiv.org/pdf/1608.06993.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Densely-Connected-Convolutional-Networks-Huang-Liu/5694e46284460a648fe29117cbc55f6c9be3fa3c)|**
  - *Huang, Gao et al. “Densely Connected Convolutional Networks.” 2017 IEEE Conference on Computer Vision and Pattern Recognition (CVPR) (2017): 2261-2269.*

---
## Optimization & Initialization & Tricks

- **[2013 Nesterov's Momentum (NAG)] |[pdf](http://www.cs.toronto.edu/~hinton/absps/momentum.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/On-the-importance-of-initialization-and-momentum-in-Sutskever-Martens/aa7bfd2304201afbb19971ebde87b17e40242e91)|**
  - `first-order optim can perform well in dnn and rnn with good momentum accelerator`
  - *Sutskever, Ilya et al. “On the importance of initialization and momentum in deep learning.” ICML (2013).*
- **[Batch Norm 2015] |[pdf](https://arxiv.org/pdf/1502.03167.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Batch-Normalization%3A-Accelerating-Deep-Network-by-Ioffe-Szegedy/4d376d6978dad0374edfa6709c9556b42d3594d3)|**
  - Ioffe, Sergey and Christian Szegedy. “Batch Normalization: Accelerating Deep Network Training by Reducing Internal Covariate Shift.” ArXiv abs/1502.03167 (2015): n. pag.
- **[GroupNorm 2018] |[pdf](https://arxiv.org/pdf/1803.08494.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Group-Normalization-Wu-He/9f7919a5677290ab2eca4fa8056bdbbf7c0b11d6)**
  - *Wu, Yuxin and Kaiming He. “Group Normalization.” ECCV (2018).*
- **[pReLU&Kaiming Initialization 2015] |[pdf](https://nbviewer.jupyter.org/github/Ringares/paper_hub/blob/master/DeepCV/%5BpReLU%26KaimingInitialization2015%5DkaimingDelvingDeepIntoRectifiers_SurpassingHumanLevelPerformanceOnImageNetClassification.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/Delving-Deep-into-Rectifiers%3A-Surpassing-on-He-Zhang/d6f2f611da110b5b5061731be3fc4c7f45d8ee23)|**
  - He, Kaiming et al. “Delving Deep into Rectifiers: Surpassing Human-Level Performance on ImageNet Classification.” 2015 IEEE International Conference on Computer Vision (ICCV) (2015): 1026-1034.
- **[LSUV Initialization 2016] |[pdf](https://arxiv.org/pdf/1511.06422.pdf)|[semanticscholar](https://www.semanticscholar.org/paper/All-you-need-is-a-good-init-Mishkin-Matas/97dc8df45972e4ed7423fc992a5092ba25b33411)|**
  - *Mishkin, Dmytro and Juan E. Sala Matas. “All you need is a good init.” CoRR abs/1511.06422 (2015): n. pag.*




```
- **[Abstract] |[pdf]()|[semanticscholar]()|**
  - *cite:*
```
