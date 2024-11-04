# MLLA-UNet

The codes for the work "MLLA-UNet: Mamba-like Linear Attention in an Efficient U-Shape Model for Medical Image Segmentation"([Arxiv](https://arxiv.org/abs/2410.23738)). 

## 1. Pretrained Models: You can choose a pretrained model based on your preference.

| model  | Resolution | #Params | FLOPs | acc@1 |            config            |                      pretrained weights                      |
| ------ | :--------: | :-----: | :---: | :---: | :--------------------------: | :----------------------------------------------------------: |
| MLLA-T |    224     |   25M   | 4.2G  | 83.5  | [config](./cfgs/mlla_t.yaml) | [TsinghuaCloud](https://cloud.tsinghua.edu.cn/f/7a19712877cb4242889c/?dl=1) |
| MLLA-S |    224     |   43M   | 7.3G  | 84.4  | [config](./cfgs/mlla_s.yaml) | [TsinghuaCloud](https://cloud.tsinghua.edu.cn/f/0e5d0b1409d540aaa80c/?dl=1) |
| MLLA-B |    224     |   96M   | 16.2G | 85.3  | [config](./cfgs/mlla_b.yaml) | [TsinghuaCloud](https://cloud.tsinghua.edu.cn/f/91c85c5a1061496d8796/?dl=1) |

Ref: [MLLA Official Implementation]

## 2. Prepare data

- [AMOS 22](https://amos22.grand-challenge.org/Dataset/)
- [FLARE 22](https://flare22.grand-challenge.org/)
- [ATLAS](https://atlas.grand-challenge.org/)
- [WORD](https://github.com/HiLab-git/WORD)
- [BTCV](https://www.synapse.org/Synapse:syn3193805/wiki/89480)
- [ACDC](https://www.creatis.insa-lyon.fr/Challenge/acdc/)

### Preprocessing:

Ref: [nnUNet](https://github.com/MIC-DKFZ/nnUNet)

## 3. Environment

- Please prepare an environment with python=3.9 and then use the command `pip install -r requirements.txt` for the dependencies.

## 4. Train/Test

- Run the train script on synapse dataset. The batch size we used is 48. If you do not have enough GPU memory, the bacth size can be reduced to 12 or 6 to save memory.

- Train

```bash (Recommend)
sh train.sh
```

- Test 

```bash(Recommend)
sh test.sh
```

## References

* [SwinUnet](https://github.com/HuCaoFighting/Swin-Unet)
* [MLLA](https://github.com/LeapLabTHU/MLLA)

## Citation

If you find this repository useful in your research, please consider citing our paper and star the repo:

```bibtex
@article{jiang2024mlla,
  title={MLLA-UNet: Mamba-like Linear Attention in an Efficient U-Shape Model for Medical Image Segmentation},
  author={Jiang, Yufeng and Li, Zongxi and Chen, Xiangyan and Xie, Haoran and Cai, Jing},
  journal={arXiv preprint arXiv:2410.23738},
  year={2024}
}
```
We appreciate your citation if you use our code or find our work helpful for your research. Thank you!

## Contact

If you have any questions or suggestions about this repository, please feel free to:

- Send an email to [905152222jyf@gmail.com](mailto:905152222jyf@gmail.com)
- Open an issue in this repository
- Submit a pull request

We welcome collaboration and communication with the community!

