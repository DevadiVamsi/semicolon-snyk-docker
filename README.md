# Snyk Python RPM Demo

## Project Structure
```markdown

Step 1: Install Docker and Python

Step 2: Create a New Project

Create a project folder:

--> mkdir snyk-rhel-demo
--> cd snyk-rhel-demo

snyk-python-rpm-demo/

├── Dockerfile
├── app.py
├── requirements.txt

Create a requirements.txt file:

Step 3: Create a Dockerfile

Step 4: Create a Sample app.py

Step 5: Build and Run the Docker Image

Build the Docker image:

--> docker build -t snyk-rhel-demo .


Run the container:

--> docker run -d -p 5000:5000 snyk-rhel-demo

Test the Flask app:

Open your browser and go to:
--> http://localhost:5000


Step 6: Scan with Snyk

Authenticate Snyk:

--> snyk auth


Scan the Docker image:

--> snyk container test snyk-rhel-demo


Monitor vulnerabilities:

--> snyk container monitor snyk-rhel-demo

Next Steps

Fix vulnerabilities using snyk fix (if available).
Automate this process in CI/CD pipelines (e.g., GitHub Actions).
