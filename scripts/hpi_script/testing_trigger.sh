cd "$(dirname "$0")"

echo "START HPI experiments..."
echo "----------------------------------------"
echo "time: $(date +"%Y-%m-%d_%H-%M-%S")"


# sh testing_bestModel_allPred.sh >> ./log/testing.log 2>&1 

# sh testing_allModel_40Pred.sh >> ./log/testing.log 2>&1 

sh testing_allModel_120Pred.sh >> ./log/testing.log 2>&1 

echo "END HPI experiments..."
echo "----------------------------------------"
echo "time: $(date +"%Y-%m-%d_%H-%M-%S")"
