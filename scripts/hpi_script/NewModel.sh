export CUDA_VISIBLE_DEVICES=0

cd "$(dirname "$0")"
datetimestamp=$(date +"%Y-%m-%d_%H-%M-%S")

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_CAN.csv \
  --model_id can_20_20 \
  --model TimeMixer \
  --data hpi \
  --features MS \
  --seq_len 20 \
  --label_len 0 \
  --pred_len 20 \
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
  --use_gpu True \
  --train_epochs 5 
> ./log/TimeMixer-$datetimestamp.log 2>&1 

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_CAN.csv \
  --model_id can_20_10_10 \
  --model TimesNet \
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
  --use_gpu True \
  --freq d \
  --top_k 5 \
  --train_epochs 5 
> ./log/TimesNet-$datetimestamp.log 2>&1 

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_CAN.csv \
  --model_id can_20_10_10 \
  --model TimeXer \
  --data ETTh2 \
  --features M \
  --seq_len 20 \
  --label_len 10 \
  --pred_len 10 \
  --e_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --des 'Exp' \
  --d_model 256 \
  --d_ff 1024 \
  --batch_size 16 \
  --itr 1 \
  --use_gpu True \
  --train_epochs 5 
> ./log/TimeXer-$datetimestamp.log 2>&1 

