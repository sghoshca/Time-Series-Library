export CUDA_VISIBLE_DEVICES=0
cd "$(dirname "$0")"
# datetimestamp=$(date +"%Y-%m-%d_%H-%M-%S")

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_All.csv \
  --model_id ALL_80_40_80 \
  --model PatchTST \
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
  --n_heads 15 \
  --des 'Exp' \
  --itr 3 \
  --use_gpu True \
  --train_epochs 20  

##########################################
# best predition graph so far
##########################################

# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_CAN.csv \
#   --model_id CAN_10_5_5 \
#   --model PatchTST \
#   --data hpi \
#   --features MS \
#   --seq_len 10 \
#   --label_len 5 \
#   --pred_len 5 \
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
#   --data_path cropped_CAN.csv \
#   --model_id CAN_20_10_10 \
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



##########################################
#### worked end to end 
##########################################
# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_all_country.csv \
#   --model_id ALL_20_10_10 \
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
# > ./log/PatchTST-$datetimestamp.log 2>&1 


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
# 
# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_CAN.csv \
#   --model_id CAN_40_5_5 \
#   --model PatchTST \
#   --data hpi \
#   --features MS \
#   --seq_len 40 \
#   --label_len 5 \
#   --pred_len 5 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 15 \
#   --dec_in 15 \
#   --c_out 1 \
#   --des 'Exp' \
#   --itr 1 \
#   --use_gpu True  
# 
# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_CAN.csv \
#   --model_id CAN_30_5_5 \
#   --model PatchTST \
#   --data hpi \
#   --features MS \
#   --seq_len 30 \
#   --label_len 5 \
#   --pred_len 5 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 15 \
#   --dec_in 15 \
#   --c_out 1 \
#   --des 'Exp' \
#   --itr 1 \
#   --use_gpu True  
# 
# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_ALL.csv \
#   --model_id CAN_10_5_5 \
#   --model PatchTST \
#   --data hpi \
#   --features MS \
#   --seq_len 10 \
#   --label_len 5 \
#   --pred_len 5 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 15 \
#   --dec_in 15 \
#   --c_out 1 \
#   --des 'Exp' \
#   --itr 1 \
#   --use_gpu True \
#   --train_epochs 20


# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_ALL.csv \
#   --model_id ALL_40_20_10 \
#   --model PatchTST \
#   --data hpi \
#   --features MS \
#   --seq_len 40 \
#   --label_len 20 \
#   --pred_len 10 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 15 \
#   --dec_in 15 \
#   --c_out 1 \
#   --des 'Exp' \
#   --itr 1 \
#   --use_gpu True \
#   --freq d \
#   --embed 'fixed' \
#   --n_heads 15 \
#   --train_epochs 20
# 
# 
# 
# 
# 
##########################################
# did not work end to end
##########################################
# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_CAN.csv \
#   --model_id CAN_80_5_20 \
#   --model PatchTST \
#   --data hpi \
#   --features MS \
#   --seq_len 80 \
#   --label_len 5 \
#   --pred_len 20 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 15 \
#   --dec_in 15 \
#   --c_out 1 \
#   --des 'Exp' \
#   --itr 1 \
#   --use_gpu True  
# 
# 
# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_CAN.csv \
#   --model_id CAN_60_5_20 \
#   --model PatchTST \
#   --data hpi \
#   --features MS \
#   --seq_len 60 \
#   --label_len 5 \
#   --pred_len 20 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 15 \
#   --dec_in 15 \
#   --c_out 1 \
#   --des 'Exp' \
#   --itr 1 \
#   --use_gpu True  
# 
# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_CAN.csv \
#   --model_id CAN_40_5_20 \
#   --model PatchTST \
#   --data hpi \
#   --features MS \
#   --seq_len 40 \
#   --label_len 5 \
#   --pred_len 20 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 15 \
#   --dec_in 15 \
#   --c_out 1 \
#   --des 'Exp' \
#   --itr 1 \
#   --use_gpu True  
# 
# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_CAN.csv \
#   --model_id CAN_30_5_15 \
#   --model PatchTST \
#   --data hpi \
#   --features MS \
#   --seq_len 30 \
#   --label_len 5 \
#   --pred_len 15 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 15 \
#   --dec_in 15 \
#   --c_out 1 \
#   --des 'Exp' \
#   --itr 1 \
#   --use_gpu True  
# 
# 