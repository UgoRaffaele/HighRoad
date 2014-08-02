(
/usr/local/tiledrawer/setup.sh
/usr/local/tiledrawer/populate.py -b 39.500 17.000 41.000 19.000 -s https://raw.githubusercontent.com/UgoRaffaele/HighRoad/tiledrawer/tiledrawer.cfg http://geodati.fmach.it/gfoss_geodata/osm/output_osm_regioni/puglia.pbf
/usr/local/tiledrawer/draw.sh
) >> /var/log/tiledrawer.log 2>&1
