export CUDA_VISIBLE_DEVICES=0

cd "$(dirname "$0")"
datetimestamp=$(date +"%Y-%m-%d_%H-%M-%S")

train_epochs=10
seq_len=200
# label_len=40
des=Exp
itr=1
embed=timeF
c_in=16
down_sampling_layers=3
down_sampling_window=2



for label_len in 50
do
for pred_len in 40 
do


python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_ALL.csv \
  --model_id ALL_$seq_len'_'$label_len'_'$pred_len \
  --seq_len $seq_len \
  --label_len $label_len \
  --pred_len $pred_len \
  --des $des \
  --train_epochs $train_epochs \
  --itr $itr \
  --embed $embed \
  --model TimesNet \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $c_in \
  --dec_in $c_in \
  --c_out 1 \
  --d_model 128 \
  --d_ff 128 \
  --top_k 5 

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ../../dataset/hpi/ \
  --data_path cropped_ALL.csv \
  --model_id ALL_$seq_len'_'$label_len'_'$pred_len \
  --seq_len $seq_len \
  --label_len $label_len \
  --pred_len $pred_len \
  --des $des \
  --train_epochs $train_epochs \
  --itr $itr \
  --embed $embed \
  --model TimeMixer \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $c_in \
  --dec_in $c_in \
  --c_out 1 \
  --d_model 64 \
  --d_ff 128 \
  --down_sampling_layers $down_sampling_layers \
  --down_sampling_method avg \
  --down_sampling_window $down_sampling_window

done 

done
