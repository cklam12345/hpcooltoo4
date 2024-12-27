cd ollama-webui
copy .env.example .env
npm install
npm run build
cd .\backend
pip install -U virtualenv
pyhthon -m virtualenv venv
.\venv\Scripts\activate.bat
pip install -r requirements.txt -U
.\start_windows.bat
