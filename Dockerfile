FROM jupyter/pyspark-notebook:latest

RUN pip install --no-cache-dir \
    pandas \
    numpy \
    matplotlib \
    seaborn

WORKDIR /app

EXPOSE 8888

# Runs a Jupyter server without login requirements
CMD ["start-notebook.sh", \
  "--NotebookApp.token=", "--NotebookApp.password="]

#command to build the image
#docker build -t pyspark .

# command to run the container (Bash):
#docker run -it --rm -p 8888:8888 -v "$(pwd)/data:/data" pyspark

# command to run the container (Powershell):
#docker run -it --rm -p 8888:8888 -v "${PWD}/data:/data" pyspark  
