set "repoDir=%~dp0hpcooltoo4"
set "backendDir=%repoDir%\backend"
copy .env.example .env 
npm install 
npm run build 
cd %backendDir% ;
pip install -U virtualenv
python -m virtualenv venv 
.\venv\Scripts\activate.bat 
pip install -r requirements.txt -U 
mkdir data