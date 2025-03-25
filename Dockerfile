FROM registry.cn-hangzhou.aliyuncs.com/longxboy/ai-dev-studio:ubuntu22.04-cuda11.8-cudnn8-python3.12-pytorch2.4


RUN pip install protobuf oss2 scikit-learn peft nvitop tensorboardx qwen_vl_utils  torchvision accelerate>=1.2.1 bitsandbytes>=0.43.0 black>=24.4.2 datasets>=3.2.0 deepspeed==0.15.4 einops>=0.8.0 flake8>=6.0.0 hf_transfer>=0.1.4 huggingface-hub[cli]>=0.19.2 isort>=5.12.0 liger_kernel==0.5.2 math-verify  packaging>=23.0 parameterized>=0.9.0 pytest safetensors>=0.3.3 sentencepiece>=0.1.99 transformers==4.49.0 trl pillow debugpy boto3 wandb tensorboard
RUN git clone https://github.com/om-ai-lab/VLM-R1.git && \
    cd VLM-R1 && \
    git checkout 6aeb354d945deec5fe58e79faa68598f3935b881 && \
    cd 3rd_party/VLM-R1/src/open-r1-multimodal && \
    pip install -e ".[dev]"
