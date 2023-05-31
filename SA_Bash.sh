#!/bin/bash
from google.colab import drive
drive.mount('/content/drive')
!git config --list
!git config --global user.name "HamedGholampour"
!git config --global user.email "hamed.gholampour@gmail.com"

token = "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"
username = "HamedGholampour"
repo = "Sentiment_Analysis"
!git clone https://{token}@github.com/{username}/{repo}
cd {repo}
!cp -r /content/drive/MyDrive/AI_Project/WorkShops/Sentiment_Analysis  /content/Sentiment_Analysis
!git status
!git add .
!git status
!git commit -m "Create Sentiment_Analysis Project"
!git log --oneline
!git remote -v
!git push origin main
