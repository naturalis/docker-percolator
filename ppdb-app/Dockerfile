# Start from a core stack version
FROM jupyter/minimal-notebook:latest
# # Install from requirements.txt file
USER root
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*
USER $NB_USER
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
RUN jupyter nbextensions_configurator enable --user
RUN mkdir -p $(jupyter --data-dir)/nbextensions &&\
    cd $(jupyter --data-dir)/nbextensions && \
    git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding && \
    chmod -R go-w vim_binding
RUN fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
