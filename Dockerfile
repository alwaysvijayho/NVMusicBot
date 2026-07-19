FROM python:3.11
RUN apt-get update && apt-get install -y ffmpeg
WORKDIR /app
COPY . .
# Conflict avoid karne ke liye specific versions use kar rahe hain
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir pyrogram==2.0.106 pytgcalls==3.0.0.dev6 flask yt-dlp tgcrypto pysocks
CMD ["python", "main.py"]
