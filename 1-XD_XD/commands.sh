

# Build the docker containter
sudo docker build -t building-segmetation .

# Start the container
sudo nvidia-docker run \
    --name building-segmentation \
    -v /data:/data \
    -ti building-segmentation \
    bash

# Start the training process
./train.sh \
    /data/train/AOI_2_Vegas_Train \
    /data/train/AOI_3_Paris_Train \
    /data/train/AOI_4_Shanghai_Train \
    /data/train/AOI_5_Khartoum_Train


# Monitor memory
echo "      date     time $(free -m | grep total | sed -E 's/^    (.*)/\1/g')"
while true; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') $(free -m | grep Mem: | sed 's/Mem://g')"
    sleep 1
done