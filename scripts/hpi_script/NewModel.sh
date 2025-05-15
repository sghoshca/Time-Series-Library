export CUDA_VISIBLE_DEVICES=0

cd "$(dirname "$0")"
datetimestamp=$(date +"%Y-%m-%d_%H-%M-%S")

train_epochs=20
seq_len=200
# label_len=40
des=Exp
itr=1

for label_len in 40 80 100
do
for pred_len in 40 80 100
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
  --model PatchTST \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --n_heads 15 


# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_ALL.csv \
#   --model_id ALL_$seq_len'_'$label_len'_'$pred_len \
#   --seq_len $seq_len \
#   --label_len $label_len \
#   --pred_len $pred_len \
#   --des $des \
#   --train_epochs $train_epochs \
#   --itr $itr \
#   --model TimeXer \
#   --e_layers 1 \
#   --factor 3 \
#   --enc_in 15 \
#   --dec_in 15 \
#   --c_out 1 \
#   --d_model 256 \
#   --d_ff 1024 \
#   --batch_size 16 


###################
### Not worked yet 
###################

# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_ALL.csv \
#   --model_id ALL_$seq_len'_'$label_len'_'$pred_len \
#   --seq_len $seq_len \
#   --label_len $label_len \
#   --pred_len $pred_len \
#   --des $des \
#   --train_epochs $train_epochs \
#   --itr $itr \
#   --model TimeMixer \
#   --e_layers 15 \
#   --enc_in 16 \
#   --c_out 1 \
#   --itr 1 \
#   --d_model 16 \
#   --d_ff 32 \
#   --learning_rate 0.01 \
#   --down_sampling_layers 3 \
#   --down_sampling_method avg \
#   --down_sampling_window 2 


# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_ALL.csv \
#   --model_id ALL_$seq_len'_'$label_len'_'$pred_len \
#   --seq_len $seq_len \
#   --label_len $label_len \
#   --pred_len $pred_len \
#   --des $des \
#   --train_epochs $train_epochs \
#   --itr $itr \
#   --model TimesNet \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 16 \
#   --c_out 1 \
#   --d_model 128 \
#   --d_ff 128 \
#   --top_k 5 \

##############
### worked 
##############

# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_ALL.csv \
#   --model_id ALL_$seq_len'_'$label_len'_'$pred_len \
#   --seq_len $seq_len \
#   --label_len $label_len \
#   --pred_len $pred_len \
#   --des $des \
#   --train_epochs $train_epochs \
#   --itr $itr \
#   --model TimeXer \
#   --e_layers 1 \
#   --factor 3 \
#   --enc_in 15 \
#   --dec_in 15 \
#   --c_out 1 \
#   --d_model 256 \
#   --d_ff 1024 \
#   --batch_size 16 


# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path cropped_ALL.csv \
#   --model_id ALL_$seq_len'_'$label_len'_'$pred_len \
#   --seq_len $seq_len \
#   --label_len $label_len \
#   --pred_len $pred_len \
#   --des $des \
#   --train_epochs $train_epochs \
#   --itr $itr \
#   --model SegRNN \
#   --seg_len 20 \
#   --enc_in 16 \
#   --d_model 512 \
#   --dropout 0.5 \
#   --learning_rate 0.0001 

done

done

