FROM bentoml/model-server:0.11.0-py37
MAINTAINER ersilia

# RUN conda install -c rdkit rdkit=2019.09.3.0
RUN pip install rdkit==2022.3.5
# RUN conda install -c dglteam dgl=0.4.3post2
RUN pip install dgl==0.9.0
# RUN conda install -c dglteam dgllife=0.2.3
RUN pip install dgllife==0.2.3
# RUN conda install -c pytorch pytorch=1.4.0
RUN pip install torch==1.11.0

WORKDIR /repo
COPY ./repo
