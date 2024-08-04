FROM python:3

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the requirements file into the container
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire current directory contents into the container
COPY . .

# Specify the default command to run when the container starts
CMD [ "python", "./main.py" ]
