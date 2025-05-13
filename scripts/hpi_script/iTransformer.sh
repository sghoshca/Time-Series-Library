export CUDA_VISIBLE_DEVICES=0

model_name=iTransformer

## Parameters to be added 
# --target HPI -- Nominal_house_price_indices
# --features MS # multivariate predict univariate
# --freq Q # quarterly data
# --batch_size 32 default


## Common settings
# root_path = ./dataset/ETT-small/, data_path = ETTh2.csv
# task_name = long_term_forecast, is_training = 1
# des = exp, data = ETTh2, features = M
# e_layers = 2, d_layers = 1, factor = 3, enc_in = 7, dec_in = 7, c_out = 7
# d_model = 128, d_ff = 128, itr = 1

## Different settings
# seq_len = 96, label_len = 48, pred_len = 96, 192, 336, 720
# model_id = ETTh2_96_96, ETTh2_96_96, ETTh2_96_336, ETTh2_96_720

# change working directory to the script's directory
cd "$(dirname "$0")"


python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_ALL.csv \
  --model_id ALL_80_40_80 \
  --model iTransformer \
  --data hpi \
  --features MS \
  --seq_len 80 \
  --label_len 40 \
  --pred_len 80 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --des 'Exp' \
  --d_model 128 \
  --d_ff 128 \
  --itr 3 \
  --use_gpu True 


# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_CAN.csv \
#   --model_id can_20_10_10 \
#   --model iTransformer \
#   --data hpi \
#   --features MS \
#   --seq_len 20 \
#   --label_len 10 \
#   --pred_len 10 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 15 \
#   --dec_in 15 \
#   --c_out 1 \
#   --des 'Exp' \
#   --d_model 128 \
#   --d_ff 128 \
#   --itr 1 \
#   --use_gpu True \
#   --embed 'fixed' 




# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_USA.csv \
#   --model_id USA_20_10_10 \
#   --model PatchTST \
#   --data hpi \
#   --features MS \
#   --seq_len 20 \
#   --label_len 10 \
#   --pred_len 10 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 15 \
#   --dec_in 15 \
#   --c_out 1 \
#   --des 'Exp' \
#   --itr 1 \
#   --use_gpu True  

# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_USA.csv \
#   --model_id USA_20_10_10 \
#   --model iTransformer \
#   --data hpi \
#   --features MS \
#   --seq_len 20 \
#   --label_len 10 \
#   --pred_len 10 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 15 \
#   --dec_in 15 \
#   --c_out 1 \
#   --des 'Exp' \
#   --d_model 128 \
#   --d_ff 128 \
#   --itr 1 \
#   --use_gpu True 
