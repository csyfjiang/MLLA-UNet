#!/bin/bash

cd ..

if [ -n "$epoch_time" ]; then
    EPOCH_TIME=$epoch_time
else
    EPOCH_TIME=150
fi

if [ -n "$out_dir" ]; then
    OUT_DIR=$out_dir
else
    OUT_DIR='./model_out_Symmetry'
fi

if [ -n "$cfg" ]; then
    CFG=$cfg
else
    CFG='configs/mlla_t.yaml'
fi

if [ -n "$data_dir" ]; then
    DATA_DIR=$data_dir
else
    DATA_DIR='data/ACDC'
fi

if [ -n "$learning_rate" ]; then
    LEARNING_RATE=$learning_rate
else
    LEARNING_RATE=0.001
fi

if [ -n "$img_size" ]; then
    IMG_SIZE=$img_size
else
    IMG_SIZE=224
fi

if [ -n "$batch_size" ]; then
    BATCH_SIZE=$batch_size
else
    BATCH_SIZE=24
fi

# 新增设备选项
if [ $device ]; then
    DEVICE=$device
else
    DEVICE='cuda:0'
fi

echo "start test model"
python test_mlla.py --dataset ACDC --cfg $CFG --is_saveni --volume_path $DATA_DIR --max_epochs $EPOCH_TIME --output_dir $OUT_DIR --img_size $IMG_SIZE --base_lr $LEARNING_RATE --batch_size $BATCH_SIZE --device $DEVICE