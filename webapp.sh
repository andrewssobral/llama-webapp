#
# first build the virtualenv using the virtualenv.sh script 
#
# gradio webapp.py
CUDA_VISIBLE_DEVICES=1 torchrun --nproc_per_node $MP webapp.py
