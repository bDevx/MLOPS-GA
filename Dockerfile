FROM python:3.10-slim
WORKDIR /app 
COPY requirements.txt . 
RUN pip install -r requirements.txt
COPY model.pkl . 
COPY src / .
#stream let port 8501
EXPOSE 8501
CMD ["streamlit","run","app.py"]
