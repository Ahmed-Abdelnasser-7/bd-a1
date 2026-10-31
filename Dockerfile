FROM quay.io/jupyter/scipy-notebook:latest

WORKDIR /home/jovyan/work

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p data notebook output/figures

COPY data/dataset.csv data/dataset.csv

EXPOSE 8888

CMD ["start-notebook.py", "--ServerApp.ip=0.0.0.0", "--ServerApp.port=8888", "--ServerApp.allow_root=True"]
