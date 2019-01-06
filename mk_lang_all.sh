fileLs="go py/py3 node lua haskell"
output="./lang/all/Dockerfile"

if [ -s $output ];then
    rm $output
fi


echo "FROM lukr/coder" >> $output
echo 'LABEL maintainer="lukr96 <zhz961101@gamil.com>"' >> $output

for path in $fileLs;do
    echo '# ///////////// '$path' \\\\\\\\\\\\\\\\' >> $output
    sed '1,2d' ./lang/$path/Dockerfile | sed '$d' >> $output
done