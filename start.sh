if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/lk3140318/Autofilter- /Autofilter-
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Autofilter-
fi
cd /Autofilter-
pip3 install -U -r requirements.txt
echo "Starting Autofilter-...."
python3 bot.py
