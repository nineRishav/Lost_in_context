# Average time is xxx seconds for each accuracy program(192.168.209.83)
# Sequential execution of accuracy programs

cd /DATA1/konda/XAI/XAI-Project/imagenet_9_exp
CUDA_VISIBLE_DEVICES=1 python accuracy-single-variant-all_at_once-STATS+PATHS-A2.py --arch resnet50
CUDA_VISIBLE_DEVICES=1 python accuracy-single-variant-all_at_once-STATS+PATHS-A2.py --arch resnet101
CUDA_VISIBLE_DEVICES=1 python accuracy-single-variant-all_at_once-STATS+PATHS-A2.py --arch resnet50_in9l
CUDA_VISIBLE_DEVICES=1 python accuracy-single-variant-all_at_once-STATS+PATHS-A2.py --arch efficientnet
CUDA_VISIBLE_DEVICES=1 python accuracy-single-variant-all_at_once-STATS+PATHS-A2.py --arch vit_base


#-----------------------------------------------------------------------------------
# Parallel execution of accuracy programs
# cd /DATA1/konda/XAI/XAI-Project/imagenet_9_exp

# CUDA_VISIBLE_DEVICES=0 python accuracy-all-variant-STATS.py --arch resnet50 &
# CUDA_VISIBLE_DEVICES=1 python accuracy-all-variant-STATS.py --arch resnet101 &
# CUDA_VISIBLE_DEVICES=0 python accuracy-all-variant-STATS.py --arch resnet50_in9l &
# CUDA_VISIBLE_DEVICES=1 python accuracy-all-variant-STATS.py --arch efficientnet &
# CUDA_VISIBLE_DEVICES=0 python accuracy-all-variant-STATS.py --arch vit_base &

# wait