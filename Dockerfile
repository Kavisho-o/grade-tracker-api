FROM python:3.11-slim    
                           # slim is a lighter version of the Python image

WORKDIR /app  
                           # setting the working directory inside the container

COPY requirements.txt .    
                           # copying requirements first 
                           # so docker can cache this layer if code changes but dependencies don't

RUN pip install --no-cache-dir -r requirements.txt
                           # installing dependencies

COPY . .                    
                           # copying the rest of the application code

EXPOSE 8000
                           # exposing the port that the FastAPI app will run on

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
                           # command to run when the container starts