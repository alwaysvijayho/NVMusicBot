import os
from pyrogram import Client

# Render ke environment se details lega
api_id = os.environ.get("API_ID")
api_hash = os.environ.get("API_HASH")
bot_token = os.environ.get("BOT_TOKEN")

app = Client("Nvmusicbot", api_id=int(api_id), api_hash=api_hash, bot_token=bot_token)

@app.on_message()
async def start(client, message):
    await message.reply_text("Music Bot active hai!")

print("Bot start ho raha hai...")
app.run()
