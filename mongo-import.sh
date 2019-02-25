for f in *.csv
do
    echo "Procesando... $f"
    filename=$(basename "$f")
    extension="${filename##*.}"
    filename="${filename%.*}"
    mongoimport -d northwind -c "$filename" --type csv --file "$f" --headerline
done
