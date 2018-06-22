build_components () {
  # Minify the CSS
  content=$(sed -e ':a' -e 'N' -e '$!ba' -e 's/\n//g' element-skeleton.css | sed -e 's/  */ /g')
  content=$(echo "$content" | sed -e 's/ ,/,/g')
  content=$(echo "$content" | sed -e 's/, /,/g')
  content=$(echo "$content" | sed -e 's/ {/{/g')
  content=$(echo "$content" | sed -e 's/{ /{/g')
  content=$(echo "$content" | sed -e 's/ }/}/g')
  content=$(echo "$content" | sed -e 's/} /}/g')
  content=$(echo "$content" | sed -e 's/ ;/;/g')
  content=$(echo "$content" | sed -e 's/; /;/g')
  content=$(echo "$content" | sed -e 's/ :/:/g')
  content=$(echo "$content" | sed -e 's/: /:/g')

  # export
  echo "$content" > element-skeleton.min.css
  pre="<dom-module id='element-skeleton'><template><style>"
  post="</style></template></dom-module>"
  echo "$pre$content$post" > element-skeleton.html

  #generate reports
  echo "LAST BUILD: $(date)"
  size=$(wc -c element-skeleton.css | sed -e "s/element-skeleton.css/ Bytes/g")
  echo -e "\telement-skeleton.css    \t$size"
  size=$(wc -c element-skeleton.min.css | sed -e "s/element-skeleton.min.css/ Bytes/g")
  echo -e "\telement-skeleton.min.css\t$size"
  size=$(wc -c element-skeleton.html | sed -e "s/element-skeleton.html/ Bytes/g")
  echo -e "\telement-skeleton.html   \t$size"
}

# record and report
build_components > last_build.log
cat last_build.log