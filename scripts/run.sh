#!/bin/bash

NAME="dab_detr"
PROJECT_NAME="protector"
NUM_CLASSES=8
coco_path=/usr/src/datasets/$PROJECT_NAME

cd models/dab_deformable_detr/ops
python setup.py build install
cd ../../..

python -m torch.distributed.launch main.py -m $NAME --output_dir logs/$PROJECT_NAME/$NAME/ --batch_size 1 --epochs 200 --lr_drop 20 --coco_path ~/detr/datasets/$PROJECT_NAME --finetune_ignore class_embed --pretrain_model_path models/DAB_DETR/checkpoint.pth --wandb_name $NAME --wandb_project_name $PROJECT_NAME --num_classes $NUM_CLASSES
