
export CUDA_VISIBLE_DEVICES=0

cd "$(dirname "$0")"

is_training=0
train_epochs=20

des=Exp
itr=0
c_in=6
c_out=1
n_heads=12
e_layers=2
d_layers=1
dataset=topf
pred_len=40


for country in AUS BEL CAN DEU FRA GBR ITA JPN USA  
do 

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training $is_training \
  --root_path ../../dataset/hpi/ \
  --data_path $dataset'_'$country'.csv' \
  --model_id ALL_$dataset \
  --seq_len 160 \
  --label_len 40 \
  --pred_len $pred_len \
  --des $des \
  --train_epochs $train_epochs \
  --itr $itr \
  --model iTransformer \
  --e_layers $e_layers \
  --d_layers $d_layers \
  --enc_in $c_in \
  --dec_in $c_in \
  --c_out $c_out \
  --d_model 128 \
  --d_ff 128 


python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training $is_training \
  --root_path ../../dataset/hpi/ \
  --data_path $dataset'_'$country'.csv' \
  --model_id ALL_$dataset \
  --seq_len 160 \
  --label_len 40 \
  --pred_len $pred_len \
  --des $des \
  --train_epochs $train_epochs \
  --itr $itr \
  --model PatchTST \
  --e_layers $e_layers \
  --d_layers $d_layers \
  --enc_in $c_in \
  --dec_in $c_in \
  --c_out $c_out \
  --n_heads $n_heads 

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training $is_training \
  --root_path ../../dataset/hpi/ \
  --data_path $dataset'_'$country'.csv' \
  --model_id ALL_$dataset \
  --seq_len 120 \
  --label_len 40 \
  --pred_len $pred_len \
  --des $des \
  --train_epochs $train_epochs \
  --itr $itr \
  --model TimeXer \
  --e_layers 1 \
  --enc_in $c_in \
  --dec_in $c_in \
  --c_out $c_out \
  --n_heads $n_heads \
  --d_model 256 \
  --d_ff 1024 

## commented because best model is run separately 
python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training $is_training \
  --root_path ../../dataset/hpi/ \
  --data_path $dataset'_'$country'.csv' \
  --model_id ALL_$dataset \
  --seq_len 120 \
  --label_len 40 \
  --pred_len $pred_len \
  --des $des \
  --train_epochs $train_epochs \
  --itr $itr \
  --model SegRNN \
  --seg_len $label_len \
  --enc_in 7 \
  --dropout 0.5 \
  --learning_rate 0.0001 


  done


