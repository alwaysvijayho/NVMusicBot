FROM python:3.11
RUN apt-get update && apt-get install -y ffmpeg
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir pip==23.0 && \
    pip install --no-cache-dir pyrogram pytgcalls flask yt-dlp tgcrypto --no-deps
CMD ["python", "main.py"]
