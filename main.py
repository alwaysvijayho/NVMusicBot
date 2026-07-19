import os
from flask import Flask
from threading import Thread

# Flask server banaya (Render isse port dhundega)
app = Flask(__name__)

@app.route('/')
def home():
    return "Bot is alive!"

def run():
    # Render ka diya hua port use karna zaruri hai
    port = int(os.environ.get("PORT", 10000))
    app.run(host='0.0.0.0', port=port)

# Pehle web server start karo
t = Thread(target=run)
t.start()

# Ab apna bot ka code yahan se shuru karo
# (Niche apna baaki bot ka code likho)
import asyncio
# ... (aapka bot ka original code)
