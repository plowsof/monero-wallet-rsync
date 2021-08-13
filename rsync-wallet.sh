dir_monerujo=/data/data/com.m2049r.xmrwallet/files/wallets
dir_wallet=$dir_monerujo
dir_r_wallet=root@eeebox:/var/log/monero/wallets/general-fund/
#sync the wallet files
sudo rsync -a $dir_r_wallet $dir_wallet
#get the owner of 'monero' folder to set file ownerships correctly
user=$(sudo stat -c "%U" /data/data/com.m2049r.xmrwallet/files/monero)
sudo chown -R ${user}:${user} $dir_wallet
#start monerujo 
#https://github.com/m2049r/xmrwallet/blob/9ed92e51175338d958e910d600a34f0a0178d483/app/src/main/AndroidManifest.xml#L24
am start --user 0 -n com.m2049r.xmrwallet/com.m2049r.xmrwallet.MainActivity
