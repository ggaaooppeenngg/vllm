VLLM_LOGGING_LEVEL=INFO CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 vllm serve /home/mw/input/gwjxjern \
    --port 8000 \
    --max-model-len 4096 \
    --gpu-memory-utilization 0.8 \
    --tensor_parallel_size=8 \
    --trust-remote-code
