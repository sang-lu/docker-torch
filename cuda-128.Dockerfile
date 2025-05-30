# Use an NVIDIA CUDA base image
FROM nvidia/cuda:12.8.1-devel-ubuntu22.04

# Install necessary dependencies
RUN apt update
RUN apt install -y \
    python3.10 \
    python3-pip \
    wget \
    curl \
    openssh-client \
    git

RUN rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip install --upgrade pip

# Install PyTorch with CUDA (adjust the command based on your CUDA version and PyTorch requirements)
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu128

ENTRYPOINT ["python3", "-c", "import torch; print(f'PyTorch {torch.__version__}, CUDA available: {torch.cuda.is_available()}, Device: {torch.cuda.get_device_name(0) if torch.cuda.is_available() else \"CPU\"}')"]
