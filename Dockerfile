FROM python:3.11
RUN apt-get update && apt-get install -y ffmpeg
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir pyrogram pytgcalls flask yt-dlp tgcrypto pysocks --use-deprecated=legacy-resolver
CMD ["python", "main.py"]
