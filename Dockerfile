#Base docker image
FROM python:alpine 

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txtYourGitHubHandle

COPY app.py app.py

CMD ["python", "./app.py"]

