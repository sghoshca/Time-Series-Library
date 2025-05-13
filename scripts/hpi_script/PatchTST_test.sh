export CUDA_VISIBLE_DEVICES=0
cd "$(dirname "$0")"
# datetimestamp=$(date +"%Y-%m-%d_%H-%M-%S")

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 0 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_USA.csv \
  --model_id CAN_20_10_10 \
  --model PatchTST \
  --data hpi \
  --features MS \
  --seq_len 20 \
  --label_len 10 \
  --pred_len 10 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --des 'Exp' \
  --itr 0 \
  --use_gpu True  

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 0 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_FRA.csv \
  --model_id CAN_20_10_10 \
  --model PatchTST \
  --data hpi \
  --features MS \
  --seq_len 20 \
  --label_len 10 \
  --pred_len 10 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --des 'Exp' \
  --itr 0 \
  --use_gpu True  

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 0 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_AUS.csv \
  --model_id CAN_20_10_10 \
  --model PatchTST \
  --data hpi \
  --features MS \
  --seq_len 20 \
  --label_len 10 \
  --pred_len 10 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --des 'Exp' \
  --itr 0 \
  --use_gpu True  

  python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 0 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_DEU.csv \
  --model_id CAN_20_10_10 \
  --model PatchTST \
  --data hpi \
  --features MS \
  --seq_len 20 \
  --label_len 10 \
  --pred_len 10 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --des 'Exp' \
  --itr 0 \
  --use_gpu True  

  python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 0 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_GBR.csv \
  --model_id CAN_20_10_10 \
  --model PatchTST \
  --data hpi \
  --features MS \
  --seq_len 20 \
  --label_len 10 \
  --pred_len 10 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --des 'Exp' \
  --itr 0 \
  --use_gpu True  

  python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 0 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_CAN.csv \
  --model_id CAN_20_10_10 \
  --model PatchTST \
  --data hpi \
  --features MS \
  --seq_len 20 \
  --label_len 10 \
  --pred_len 10 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --des 'Exp' \
  --itr 0 \
  --use_gpu True  

  python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 0 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_JPN.csv \
  --model_id CAN_20_10_10 \
  --model PatchTST \
  --data hpi \
  --features MS \
  --seq_len 20 \
  --label_len 10 \
  --pred_len 10 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --des 'Exp' \
  --itr 0 \
  --use_gpu True  

  python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 0 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_KOR.csv \
  --model_id CAN_20_10_10 \
  --model PatchTST \
  --data hpi \
  --features MS \
  --seq_len 20 \
  --label_len 10 \
  --pred_len 10 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --des 'Exp' \
  --itr 0 \
  --use_gpu True  

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 0 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_USA.csv \
  --model_id ALL_40_20_10 \
  --model PatchTST \
  --data hpi \
  --features MS \
  --seq_len 40 \
  --label_len 20 \
  --pred_len 10 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --des 'Exp' \
  --itr 0 \
  --use_gpu True \
  --freq d \
  --embed 'fixed' \
  --n_heads 15 

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 0 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_CAN.csv \
  --model_id ALL_40_20_10 \
  --model PatchTST \
  --data hpi \
  --features MS \
  --seq_len 40 \
  --label_len 20 \
  --pred_len 10 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --des 'Exp' \
  --itr 0 \
  --use_gpu True \
  --freq d \
  --embed 'fixed' \
  --n_heads 15 