cd source
root=$(pwd)

for folder in $(find -type d); do
    (cd $folder
     for file in *.md; do
         [ -e "$file" ] || continue
         mkdir -p "$root/../${folder#./}"
         pandoc -f markdown -t html  "$file" -o "$root/../${folder#./}/`basename "$file" .md`.html" -B "$root/layouts/header.html" --css "/static/style.css"  2> /dev/null
     done)
done

mkdir -p ../static
cp static/style.css ../static/style.css
