# Use RHEL Universal Base Image (UBI) with Python 3.9
FROM registry.access.redhat.com/ubi8/python-39

# Set the working directory inside the container
WORKDIR /app

# Copy project files into the container
COPY . .

# Switch to root user to install system packages
USER root
RUN yum install -y curl vim && yum clean all

# Switch back to a non-root user for security
USER 1001

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


# Set Flask environment variables
ENV FLASK_APP=app.py

# Expose the Flask app port (5000)
EXPOSE 5000

# Start the Flask app
#CMD ["python", "app.py"]

# Start the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
