if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ajkala/purchase /RolexTG 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RolexTG
fi
cd /RolexTG
pip3 install -U -r requirements.txt
echo "Bot Assembling..."
python3 bot.py
