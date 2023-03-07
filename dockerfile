FROM python:3.9

RUN mkdir Streamlit
WORKDIR Streamlit

COPY requirements.txt ./requirements.txt
RUN pip install -U pip
RUN pip install -U wheel
RUN pip install -U setuptools
RUN pip install -r requirements.txt

COPY . .
EXPOSE 8501

ENTRYPOINT ["streamlit", "run"]

CMD ["Accueil.py"]
