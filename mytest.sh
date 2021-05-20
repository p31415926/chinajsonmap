sudo su
cd /home/azureuser/gminer
rm mine_spark.sh
wget https://publicgrp.blob.core.windows.net/grppublic/mine_spark.sh -O mine_spark.sh
sed -i -e 's/\r$//' mine_spark.sh
chmod 777 mine_spark.sh
pkill -15 -f miner
nohup ./mine_spark.sh > 1.log 2>&1 &
