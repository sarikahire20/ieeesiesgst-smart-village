## Base Python Image for App
FROM python:3.9-rc-buster

# Setting up Docker environment 
# Setting Work directory for RUN CMD commands
WORKDIR  /app

EXPOSE 5000

#Copy requirements file from current directory to file in 
#containers code directory we have just created.
COPY requirements.txt requirements.txt

#Run and install all required modules in container
RUN pip3 install -r requirements.txt

#Copy current directory files to containers code directory
COPY . .

#RUN app.
CMD ["python3", "app.py"]