
export CUDA_VISIBLE_DEVICES=0

cd "$(dirname "$0")"

is_training=0
train_epochs=20
des=Exp
itr=0
c_in=13
c_out=1
n_heads=12
e_layers=2
d_layers=1
dataset=clean
pred_len=40
seq_len=160
label_len=20


for country in AUS BEL CAN DEU FRA GBR ITA JPN USA  
do 

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training $is_training \
  --root_path ../../dataset/hpi/ \
  --data_path $dataset'_'$country'.csv' \
  --model_id ALL_$dataset \
  --seq_len 160 \
  --label_len 20 \
  --pred_len 40 \
  --des $des \
  --train_epochs $train_epochs \
  --itr $itr \
  --model SegRNN \
  --seg_len 20 \
  --enc_in 14 \
  --dropout 0.5 \
  --learning_rate 0.0001 

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training $is_training \
  --root_path ../../dataset/hpi/ \
  --data_path $dataset'_'$country'.csv' \
  --model_id ALL_$dataset \
  --seq_len 200 \
  --label_len 40 \
  --pred_len 80 \
  --des $des \
  --train_epochs $train_epochs \
  --itr $itr \
  --model SegRNN \
  --seg_len 20 \
  --enc_in 14 \
  --dropout 0.5 \
  --learning_rate 0.0001 

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training $is_training \
  --root_path ../../dataset/hpi/ \
  --data_path $dataset'_'$country'.csv' \
  --model_id ALL_$dataset \
  --seq_len 160 \
  --label_len 20 \
  --pred_len 100 \
  --des $des \
  --train_epochs $train_epochs \
  --itr $itr \
  --model SegRNN \
  --seg_len 20 \
  --enc_in 14 \
  --dropout 0.5 \
  --learning_rate 0.0001     

python -u ../../run_hpi.py \
  --task_name long_term_forecast \
  --is_training $is_training \
  --root_path ../../dataset/hpi/ \
  --data_path $dataset'_'$country'.csv' \
  --model_id ALL_$dataset \
  --seq_len 120 \
  --label_len 40 \
  --pred_len 120 \
  --des $des \
  --train_epochs $train_epochs \
  --itr $itr \
  --model SegRNN \
  --seg_len 40 \
  --enc_in 14 \
  --dropout 0.5 \
  --learning_rate 0.0001 

  done



