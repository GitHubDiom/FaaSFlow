FROM codeless_base
RUN pip3 install --no-cache-dir tensorflow keras pillow -i https://pypi.tuna.tsinghua.edu.cn/simple
COPY config.py /proxy
RUN mkdir /blocks
COPY blocks /blocks
COPY resnet50_final_violence.h5 /proxy/resnet50_final_violence.h5