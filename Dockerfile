FROM python:3.11
RUN apt-get update && apt-get install -y ffmpeg
WORKDIR /app
COPY . .
# Yahan humne pytgcalls ka wo version dala hai jo aksar stable rehta hai
RUN pip install --no-cache-dir pyrogram==2.0.106 pytgcalls==2.1.1 flask yt-dlp tgcrypto pysocks
CMD ["python", "main.py"]
