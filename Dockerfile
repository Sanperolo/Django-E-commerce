FROM python:3.6
RUN apt-get update && apt-get install \
  -y --no-install-recommends python3 python3-virtualenv

WORKDIR /code
# Install dependencies:
COPY requirements.txt /code
RUN pip install -r requirements.txt

# Run the application:
COPY . /code
CMD ["python3", "manage.py"]