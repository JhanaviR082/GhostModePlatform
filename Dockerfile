# Use official Python image
# CUSTOMIZABLE: Change "3.10" to your preferred Python version (e.g., 3.11, 3.12)
FROM python:3.10-slim

# Set environment variables
# Prevents Python from writing .pyc files to disc (equivalent to python -B option)
ENV PYTHONDONTWRITEBYTECODE=1
# Forces stdout and stderr to be unbuffered (prints immediately)
ENV PYTHONUNBUFFERED=1

# Set working directory inside container
# CUSTOMIZABLE: Change "/app" to any directory name you prefer (e.g., /code, /myproject)
WORKDIR /ghostmodeplatform

# Copy requirements file from your local machine to container
# CUSTOMIZABLE: Change "requirements.txt" if your file has a different name
COPY requirements.txt /ghostmodeplatform/

# Upgrade pip to latest version
RUN pip install --upgrade pip

# Install Python dependencies from requirements file
RUN pip install -r requirements.txt

# Copy all project files from current directory to container
# The "." means current directory on your machine, "/app/" is destination in container
COPY . /ghostmodeplatform/

# Expose port 8000 to allow external access
# CUSTOMIZABLE: Change "8000" to match your preferred port (e.g., 8080, 3000)
EXPOSE 8000

# Command to run when container starts
# Starts Django development server on all network interfaces (0.0.0.0) on port 8000
# CUSTOMIZABLE: Change port "8000" to match EXPOSE port if you changed it
# CUSTOMIZABLE: Replace with gunicorn for production: ["gunicorn", "myproject.wsgi:application", "--bind", "0.0.0.0:8000"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]