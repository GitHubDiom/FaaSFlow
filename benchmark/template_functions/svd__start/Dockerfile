FROM codeless_base
RUN pip3 install --no-cache-dir numpy -i https://pypi.tuna.tsinghua.edu.cn/simple
COPY config.py /proxy
RUN mkdir /blocks
COPY blocks /blocks
COPY data.npy /proxy/data.npy
