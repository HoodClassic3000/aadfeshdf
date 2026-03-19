#!/bin/bash

echo "Fuk-daFish Setup"
echo "================"

echo "Installing Python requirements..."
source .venv/bin/activate
pip install -r requirements.txt

echo ""
echo "Copying .env file..."
if [ ! -f "script/.env" ]; then
    cp "script/.env-example" "script/.env"
    echo ".env created! Edit it with your Discord token."
else
    echo ".env already exists, skipping..."
fi

echo ""
echo "Setup complete! Run: python script/dingding"
