FROM codeless_base
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get clean
RUN apt-get update
RUN apt-get install -y tesseract-ocr libgl1-mesa-glx

RUN pip3 install --no-cache-dir pillow opencv-python pytesseract -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY config.py /proxy
RUN mkdir /blocks
COPY blocks /blocks
