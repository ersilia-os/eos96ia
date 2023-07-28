FROM bentoml/model-server:0.11.0-py37
MAINTAINER ersilia

RUN pip install rdkit==2022.3.5
RUN pip install dgl -f https://data.dgl.ai/wheels/repo.html
RUN pip install dglgo -f https://data.dgl.ai/wheels-test/repo.html
RUN conda install -c dglteam dgllife -y
RUN conda install -c pytorch pytorch -y

WORKDIR /repo
COPY ./repo
