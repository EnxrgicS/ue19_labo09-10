FROM python:3.11

RUN useradd -ms /bin /bash user
USER user

WORKDIR /home/user

COPY requirements.txt .

RUN pip install -r requirements.txt && rm requirements.txt

COPY src .

EXPOSE 8000

ENTRYPOINT ["python", "app.py"]
