##############################################
# YOU MUST NOT MODIFY THIS FILE
##############################################
# image with python
FROM python:3.11

# Install pip requirements 
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

# Copy files
COPY parameters/ ./parameters/  
COPY model.py .
COPY main.py . 

CMD ["python", "./main.py"]