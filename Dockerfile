FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all the current files into the container
COPY . .

# Install the necessary Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that FastAPI will run on
EXPOSE 8080

# Command to run FastAPI on Uvicorn, binding it to 0.0.0.0 so it listens on all interfaces
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
