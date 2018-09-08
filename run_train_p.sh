export OMP_NUM_THREADS=1
export MKL_NUM_THREADS=1
export CUDA_VISIBLE_DEVICES=1
basepath=$(cd `dirname $0`; pwd)
echo $basepath
nohup python -u $basepath/main.py --config ./Config/config.cfg --train -p > log 2>&1 &
tail -f log 
 


