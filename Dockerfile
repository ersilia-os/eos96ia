FROM bentoml/model-server:0.11.0-py37
MAINTAINER ersilia

RUN conda install -c rdkit rdkit=2019.09.3.0 -y
RUN conda install -c dglteam dgl=0.4.3post2 -y
RUN conda install -c dglteam dgllife=0.2.3 -y
RUN conda install -c pytorch pytorch=1.4.0 -y

WORKDIR /repo
COPY ./repo
