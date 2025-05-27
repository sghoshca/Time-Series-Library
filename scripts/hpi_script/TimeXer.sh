export CUDA_VISIBLE_DEVICES=0

cd "$(dirname "$0")"

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
  --model TimeXer \
  --e_layers 1 \
  --factor 3 \
  --enc_in 15 \
  --dec_in 15 \
  --c_out 1 \
  --d_model 256 \
  --d_ff 1024 \
  --batch_size 16 



