
@echo off
echo Setting up Python virtual environment on Windows...
IF EXIST python3_environment (
    rmdir /s /q python3_environment
)
python -m venv python3_environment
call python3_environment\Scripts\activate.bat
pip install ipykernel
python -m ipykernel install --user --name=python3_environment --display-name="Python (python3_environment)"
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
echo ? Environment setup complete.
pause
