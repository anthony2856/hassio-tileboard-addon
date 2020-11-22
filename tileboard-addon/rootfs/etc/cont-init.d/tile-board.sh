#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: TileBoard
# Configures TileBoard
# ==============================================================================

CONFIG_FOLDER=$(bashio::config 'configFolder')

bashio::log.info 'Symlink files to dist folder'

for f in /config/www/$CONFIG_FOLDER/*; 
do 
    FILENAME=$(basename $f);
    ln -s /config/www/$CONFIG_FOLDER/$FILENAME /var/www/tileboard/$FILENAME
done;
