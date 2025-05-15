cd "$(dirname "$0")"

echo "START HPI experiments..."
echo "----------------------------------------"
echo "time: $(date +"%Y-%m-%d_%H-%M-%S")"

sh PatchTST.sh >> ./log/PatchTST.log 2>&1 
# sh iTransformer.sh >> ./log/iTransformer.log 2>&1 

# sh PatchTST_test.sh >> ./log/PatchTST.log 2>&1 



echo "END HPI experiments..."
echo "----------------------------------------"
echo "time: $(date +"%Y-%m-%d_%H-%M-%S")"
