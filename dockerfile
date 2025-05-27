FROM python
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "test.py"]