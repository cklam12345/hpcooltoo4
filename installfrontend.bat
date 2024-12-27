set "repoDir=%~dp0hpcooltoo4"
set "backendDir=%repoDir%\backend"
copy .env.example .env 
npm install 
npm run build 
cd %backendDir%
pip install -U virtualenv
python -m virtualenv venv 
copy .\venv\Scripts\activate.bat .\venv\Scripts\activate2.bat
echo .\start_windows.bat >> .\venv\Scripts\activate.bat
echo pip install -r requirements.txt -U >>  .\venv\Scripts\activate2.bat
echo mkdir data >> .\venv\Scripts\activate2.bat
.\venv\Scripts\activate2.bat