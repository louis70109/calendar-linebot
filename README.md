## 概述

這是一個用 Python 撰寫的 FastAPI 應用程式，它運用 OpenAI 的 GPT-3 模型與 LINE Bot API 進行文字訊息處理，並將處理後的文字訊息轉換成 Google Calendar 給使用者，可以加入行事曆。

## 主要功能

<iframe width="560" height="315" src="https://www.youtube.com/embed/5JTU15VtDAw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

1. 透過 LINE Webhook 接收使用者的文字訊息。
2. 利用 OpenAI API 處理接收到的文字，並轉換為 Google Calendar 的邀請網址。
3. 將轉換後的網址回傳給使用者點選。

## 加入好友

<img src="https://raw.githubusercontent.com/louis70109/calendar-linebot/main/screenshot/qrcode..jpeg" controls="controls" width="300" height="300">

## 環境變數

你需要設置以下環境變數：

- API_ENV: 應用程式的運行環境，可以是 'production' 或 'develop'，預設 develop。
- LOG: 紀錄的等級，例如 'WARNING'、'INFO'、'DEBUG' 等。
- LINE_CHANNEL_ACCESS_TOKEN: LINE Channel 的 Access Token。
- LINE_CHANNEL_SECRET: LINE Channel 的 Secret。
- OPENAI_API_KEY: OpenAI 的 API Key。
- PORT: 預設 8080

## 安裝需求

你需要 Python 3.6 或以上版本的環境來運行此應用程式，並確保安裝以下的 Python 套件：

FastAPI
python-dotenv
uvicorn
line-bot-sdk
openai

可以用 pip 安裝所有需求：

```
pip install -r requirements.txt
```

## 使用方法

```
git clone https://github.com/louis70109/calendar-linebot
cd calendar-linebot/
pip install -r requirements.txt
python main.py
```

透過 ngrok 建立暫時含有 https 的網址，並設定在 LINE Developer Console

```
ngrok http 8080
```

將 Domain 設定於 LINE Developer Console

1. 前往 LINE Developer Console 網站：https://developers.line.biz/console/
2. 點選右上角的「Log in」按鈕，登入您的 LINE 帳號。如果您還沒有 LINE 帳號，您需要先建立一個。
3. 在網頁上方的選單中，選擇「Provider」，然後選擇「Create」。
4. 在彈出的視窗中，輸入一個 Provider 名稱，然後點擊「Create」。
5. 建立隻後，您將被導向該 Provider 的頁面。在這裡，選擇「Create Channel」。
6. 您需要選擇您要創建的 Channel 類型，對於 bot，請選擇「Messaging API」。
7. 填寫 Channel 的資訊，包括 Channel 名稱、Channel 說明、區域、大頭貼等等，然後點選「Create」。
8. Channel 建立後，您將被導向 Channel 的設定頁面。在這裡，您可以看到您的 Channel ID、Channel Secret、以及 Channel Access Token，這些資訊將被用於設定 bot。
9. 還有一個重要的設定是「Use webhooks」。如果您希望您的 bot 可以接收來自 LINE 的訊息，您需要打開這個設定，並輸入您的 webhook URL。您的 webhook URL 是一個可以接收 POST 請求的伺服器網址。
10. 之後，您可以在 LINE app 中加入您剛剛建立的 bot 為好友，並開始測試。

## 參與貢獻

如果你有任何問題或建議，歡迎開 issue 或 pull request。

## LICENSE

請見 LICENSE 文件。
