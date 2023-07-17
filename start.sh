if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/spidyynaik/Auto-search-tamil-bot.git /Autobot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Autobot
fi
cd /Autobot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
