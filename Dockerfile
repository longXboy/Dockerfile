FROM pytorch/pytorch:2.1.2-cuda11.8-cudnn8-runtime

RUN apt-get update && apt-get install -y vim curl git
RUN pip install https://github.com/vllm-project/vllm/releases/download/v0.6.6.post1/vllm-0.6.6.post1+cu118-cp38-abi3-manylinux1_x86_64.whl --extra-index-url  https://download.pytorch.org/whl/cu118
