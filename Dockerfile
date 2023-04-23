FROM python:3.10

WORKDIR /app

COPY . .

RUN python -m venv venv
ENV PATH="/app/venv/bin:$PATH"

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
