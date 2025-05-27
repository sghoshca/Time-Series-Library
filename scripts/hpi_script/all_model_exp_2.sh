
export CUDA_VISIBLE_DEVICES=0

cd "$(dirname "$0")"

train_epochs=20
seq_len=240

des=Exp
itr=1
c_in=13
c_out=1
n_heads=12
e_layers=2
d_layers=1
data=clean

for seq_len in 80 120 160  
do 

for label_len in 40 80  
do

for pred_len in 120
do


# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path $data'_ALL.csv' \
#   --model_id ALL_$data \
#   --seq_len $seq_len \
#   --label_len $label_len \
#   --pred_len $pred_len \
#   --des $des \
#   --train_epochs $train_epochs \
#   --itr $itr \
#   --model PatchTST \
#   --e_layers $e_layers \
#   --d_layers $d_layers \
#   --enc_in $c_in \
#   --dec_in $c_in \
#   --c_out $c_out \
#   --n_heads $n_heads 

# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path $data'_ALL.csv' \
#   --model_id ALL_$data \
#   --seq_len $seq_len \
#   --label_len $label_len \
#   --pred_len $pred_len \
#   --des $des \
#   --train_epochs $train_epochs \
#   --itr $itr \
#   --model TimeXer \
#   --e_layers $e_layers \
#   --enc_in $c_in \
#   --dec_in $c_in \
#   --c_out $c_out \
#   --n_heads $n_heads \
#   --d_model 256 \
#   --d_ff 1024 


python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ../../dataset/hpi/ \
  --data_path $data'_ALL.csv' \
  --model_id ALL_$data \
  --seq_len $seq_len \
  --label_len $label_len \
  --pred_len $pred_len \
  --des $des \
  --train_epochs $train_epochs \
  --itr $itr \
  --model SegRNN \
  --seg_len $label_len \
  --enc_in 14 \
  --dropout 0.5 \
  --learning_rate 0.0001 


# python -u ../../run_hpi.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ../../dataset/hpi/ \
#   --data_path $data'_ALL.csv' \
#   --model_id ALL_$data \
#   --seq_len $seq_len \
#   --label_len $label_len \
#   --pred_len $pred_len \
#   --des $des \
#   --train_epochs $train_epochs \
#   --itr $itr \
#   --model iTransformer \
#   --e_layers $e_layers \
#   --d_layers $d_layers \
#   --enc_in $c_in \
#   --dec_in $c_in \
#   --c_out $c_out \
#   --d_model 128 \
#   --d_ff 128 

  done 

  done 

  done


