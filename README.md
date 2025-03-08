Docker Torch
===

Introduction
---

This project sets up a Docker environment for PyTorch with CUDA 12.1.1 support. It consists of:

- Uses NVIDIA's CUDA 12.1.1 Ubuntu-based image
- Installs Python 3.10 and essential tools
- Sets up PyTorch with CUDA support
- Includes a simple entrypoint script to verify the PyTorch installation and CUDA availability.

The setup allows for GPU-accelerated PyTorch development in a containerized environment.

Using as a Base Image
---

To use this image as a base for your PyTorch application. Create a new `Dockerfile` in your project:

```dockerfile
FROM sanglu/torch:cuda-12.1.1

# Copy your application files
COPY . /app
WORKDIR /app

# Install additional dependencies if needed
RUN pip install -r requirements.txt

# Override the entrypoint with your application
ENTRYPOINT ["python3", "your_script.py"]
```
