FROM tensorflow/tensorflow:1.7.0-gpu-py3
WORKDIR /
RUN apt-get update
RUN apt-get install -y libsm6 libxext6 libxrender-dev git
RUN pip3 install git+https://github.com/JiahuiYu/neuralgym
RUN pip3 install opencv-python
RUN pip3 install pyyaml
COPY . generative_inpainting/
CMD bash
