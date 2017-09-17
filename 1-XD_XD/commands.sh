

# Build the docker containter
sudo docker build -t building-segmentation .

# Start a bash session in the container
sudo nvidia-docker run \
    --name building-segmentation \
    -v /data:/data \
    -ti building-segmentation \
    bash

# Run the training process for Paris
sudo nvidia-docker run \
    --name building-segmentation \
    -v /data:/data \
    building-segmentation \
    bash ./train.sh /data/train/AOI_3_Paris_Train
    
# Run the testing process for Paris
sudo nvidia-docker run \
    --name building-segmentation \
    -v /data:/data \
    -ti building-segmentation \
    bash ./test.sh /data/train/AOI_3_Paris_Train paris.csv


# Monitor memory
echo "      date     time $(free -m | grep total | sed -E 's/^    (.*)/\1/g')"
while true; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') $(free -m | grep Mem: | sed 's/Mem://g')"
    sleep 1
done
