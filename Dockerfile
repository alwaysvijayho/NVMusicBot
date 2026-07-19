FROM python:3.11
RUN apt-get update && apt-get install -y ffmpeg
WORKDIR /app
COPY . .
# Cache ko ignore karne ke liye '--no-cache-dir'
RUN pip install --no-cache-dir pyrogram pytgcalls flask yt-dlp tgcrypto
CMD ["python", "main.py"]
