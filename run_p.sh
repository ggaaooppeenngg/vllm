VLLM_LOGGING_LEVEL=INFO CUDA_VISIBLE_DEVICES=0,1,2,3 vllm serve /home/mw/input/gwjxjern \
    --port 8100 \
    --max-model-len 4096 \
    --gpu-memory-utilization 0.8 \
    --tensor_parallel_size=4 \
    --trust-remote-code \
    --kv-transfer-config \
    '{"kv_connector":"PyNcclConnector","kv_role":"kv_producer","kv_rank":0,"kv_buffer_size":1000e9,"kv_producers_size":1,"tensor_parallel_multiplier":1,"kv_parallel_size":2}'
