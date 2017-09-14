
mkdir /data
mkdir /data/train 
mkdir /data/test
mkdir /data/tmp && cd /data/tmp

# Get training files
aws s3api get-object --bucket spacenet-dataset --key AOI_2_Vegas/AOI_2_Vegas_Train.tar.gz --request-payer requester AOI_2_Vegas_Train.tar.gz
aws s3api get-object --bucket spacenet-dataset --key AOI_3_Paris/AOI_3_Paris_Train.tar.gz --request-payer requester AOI_3_Paris_Train.tar.gz
aws s3api get-object --bucket spacenet-dataset --key AOI_4_Shanghai/AOI_4_Shanghai_Train.tar.gz --request-payer requester AOI_4_Shanghai_Train.tar.gz
aws s3api get-object --bucket spacenet-dataset --key AOI_5_Khartoum/AOI_5_Khartoum_Train.tar.gz --request-payer requester AOI_5_Khartoum_Train.tar.gz

# Get testing files
aws s3api get-object --bucket spacenet-dataset --key AOI_2_Vegas/AOI_2_Vegas_Test_public.tar.gz --request-payer requester AOI_2_Vegas_Test_public.tar.gz
aws s3api get-object --bucket spacenet-dataset --key AOI_3_Paris/AOI_3_Paris_Test_public.tar.gz --request-payer requester AOI_3_Paris_Test_public.tar.gz
aws s3api get-object --bucket spacenet-dataset --key AOI_4_Shanghai/AOI_4_Shanghai_Test_public.tar.gz --request-payer requester AOI_4_Shanghai_Test_public.tar.gz
aws s3api get-object --bucket spacenet-dataset --key AOI_5_Khartoum/AOI_5_Khartoum_Test_public.tar.gz --request-payer requester AOI_5_Khartoum_Test_public.tar.gz

# Extract training files
tar -xvzf AOI_2_Vegas/AOI_2_Vegas_Train.tar.gz -C /data/train && \
tar -xvzf AOI_2_Vegas/AOI_3_Paris_Train.tar.gz -C /data/train && \
tar -xvzf AOI_2_Vegas/AOI_4_Shanghai_Train.tar.gz -C /data/train && \
tar -xvzf AOI_2_Vegas/AOI_5_Khartoum_Train.tar.gz -C /data/train 

# Extract testing files
tar -xvzf AOI_2_Vegas/AOI_2_Vegas_Test_public.tar.gz -C /data/test && \
tar -xvzf AOI_2_Vegas/AOI_3_Paris_Test_public.tar.gz -C /data/test && \
tar -xvzf AOI_2_Vegas/AOI_4_Shanghai_Test_public.tar.gz -C /data/test && \
tar -xvzf AOI_2_Vegas/AOI_5_Khartoum_Test_public.tar.gz -C /data/test 