set -eux

for i in ../src/*; do
  m4 -I ../../ $i
done
