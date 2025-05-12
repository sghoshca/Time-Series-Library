export CUDA_VISIBLE_DEVICES=0


cd "$(dirname "$0")"


python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_USA.csv \
  --model_id USA_40_40 \
  --model TimeMixer \
  --data hpi \
  --features MS \
  --seq_len 40 \
  --label_len 0 \
  --pred_len 40 \
  --e_layers 15 \
  --enc_in 15 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --d_model 16 \
  --d_ff 32 \
  --learning_rate 0.01 \
  --down_sampling_layers 3 \
  --down_sampling_method avg \
  --down_sampling_window 2 \
  --use_gpu True 



python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_USA.csv \
  --model_id USA_20_10_10 \
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
  --itr 1 \
  --use_gpu True  

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_USA.csv \
  --model_id USA_20_10_10 \
  --model iTransformer \
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
  --d_model 128 \
  --d_ff 128 \
  --itr 1 \
  --use_gpu True 
