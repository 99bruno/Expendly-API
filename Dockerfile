FROM python:3.12.3

WORKDIR /Expendly

COPY requirements.txt .

RUN  pip install -r requirements.txt

COPY . .

CMD ["gunicorn", "expendly.expendly.wsgi:application", "--bind", "0.0.0.0:8000"]