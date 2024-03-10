if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/hero890/Ultra-Forwords /Ultra-Forwords
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Ultra-Forwords
fi
cd /Ultra-Forwords
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
