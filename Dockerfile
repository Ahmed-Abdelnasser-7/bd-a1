FROM quay.io/jupyter/scipy-notebook:latest

WORKDIR /home/jovyan/work

COPY data/ data/
COPY notebook/ notebook/
COPY output/ output/
COPY screenshots/ screenshots/

COPY convert_csv.py convert_csv.py
COPY README.md README.md
COPY requirements.txt requirements.txt
COPY Dockerfile Dockerfile

RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p data notebook output/figures

COPY data/dataset.csv data/dataset.csv

EXPOSE 8888

CMD ["start-notebook.py", "--ServerApp.ip=0.0.0.0", "--ServerApp.port=8888", "--ServerApp.allow_root=True"]
