if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AKIMAX_OBLI/AKIMAX_OBLI.git /AKIMAX_OBLI
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AKIMAX_OBLI
fi
cd /AKIMAX_OBLI
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
