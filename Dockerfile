FROM ghcr.io/mlflow/mlflow:v2.0.1

WORKDIR /mlflow/

#RUN pip install mlflow==2.0.1

EXPOSE 5000

CMD mlflow server \
    --backend-store-uri /mlflow/ \
    --default-artifact-root /mlflow/ \
    --host 0.0.0.0
