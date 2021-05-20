sudo su
cd /home/azureuser/gminer
pkill -15 -f miner
nohup ./mine_eth.sh > 1.log 2>&1 &
ps -ef |grep mine
