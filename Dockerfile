FROM python:3.11-slim
RUN apt-get update && apt-get install -y ffmpeg
WORKDIR /app
COPY . .
# Conflict bachane ke liye hum direct install kar rahe hain
RUN pip install --no-cache-dir pyrogram pytgcalls flask yt-dlp tgcrypto pysocks
# Dockerfile se hi Start Command chala rahe hain
CMD ["python", "main.py"]
