dir_monerujo=/data/data/com.m2049r.xmrwallet/files/wallets
dir_wallet=$dir_monerujo
dir_r_wallet=root@eeebox:/var/log/monero/wallets/general-fund/
#sync the wallet files
sudo rsync -a $dir_r_wallet $dir_wallet
#get the owner of 'monero' folder to set file ownerships correctly
user=$(sudo stat -c "%U" /data/data/com.m2049r.xmrwallet/files/monero)
echo $dir_wallet
sudo chown -R ${user}:${user} $dir_wallet
#start monerujo (todo: find correct name)
#am start --user 0 -n com.termux/com.termux.app.TermuxActivity
