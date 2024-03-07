from jupyter/base-notebook:7285848c0a11

RUN pip install --upgrade pip

COPY ./requirements.txt /home/jovyan/requirements.txt

# WORKDIR /home/jovyan/mimic-iv

RUN pip install --no-cache-dir  --extra-index-url https://download.pytorch.org/whl/cu118 -r /home/jovyan/requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

# RUN ln -s /home/jovyan/mimic-iv/mimic-iv /home/jovyan/mimic_data/physionet.org/files/mimic-iv/2.0
