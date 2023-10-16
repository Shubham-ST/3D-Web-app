FROM python:3.6-slim
WORKDIR /usr/src/app
COPY . .
RUN pip install -r requirements.txt
RUN pipenv install
EXPOSE 2000
CMD ["python","api.py","pipenv","runserver","0.0.0.0:2000"]
