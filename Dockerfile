FROM pytorch/pytorch:2.1.2-cuda11.8-cudnn8-runtime

RUN apt-get update && apt-get install -y vim curl git
RUN pip install https://github.com/vllm-project/vllm/releases/download/v0.6.1.post2/vllm-0.6.1.post2+cu118-cp310-cp310-manylinux1_x86_64.whl --extra-index-url  https://download.pytorch.org/whl/cu118
