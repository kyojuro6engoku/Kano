if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/kyojuro6engoku/Kano.git /kano
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /kano
fi
cd /kano
pip3 install -U -r requirements.txt
echo "Starting kano...."
python3 bot.py
