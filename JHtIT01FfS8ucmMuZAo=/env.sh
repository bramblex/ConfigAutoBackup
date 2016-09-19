
for dir in $(ls ${HOME}/Local/)
do
    PATH=${PATH}:${HOME}/Local/${dir}/bin
done
