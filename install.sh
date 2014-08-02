(
apt-get -y install git curl htop
git clone -b config http://tiledrawer.com/.git/ /usr/local/tiledrawer
sudo apt-get install -y python-software-properties
sudo add-apt-repository ppa:mapnik/v2.2.0
sudo add-apt-repository ppa:mapnik/boost
sudo apt-get update
sudo apt-get install libboost-dev libboost-filesystem-dev libboost-program-options-dev libboost-python-dev libboost-regex-dev libboost-system-dev libboost-thread-dev
sudo apt-get install python-mapnik2
/usr/local/tiledrawer/setup.sh
pip install cssutils
pip install cascadenik
sudo -u postgres createuser --superuser $USER
/usr/local/tiledrawer/populate.py -b 39.500 17.000 41.000 19.000 -s https://raw.githubusercontent.com/UgoRaffaele/HighRoad/tiledrawer/tiledrawer.cfg http://geodati.fmach.it/gfoss_geodata/osm/output_osm_regioni/puglia.pbf
/usr/local/tiledrawer/draw.sh
) >> /var/log/tiledrawer.log 2>&1
