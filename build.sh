pre="<dom-module id='element-skeleton'><template><style>"
post="</style></template></dom-module>"
content=$(sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g'  element-skeleton.css | sed -e 's/  */ /g')

(echo "$pre$content$post" > element-skeleton.html && echo "Build Successful") || echo "Build Failed";
size=$(wc -c element-skeleton.html | sed -e "s/element-skeleton.html/ Bytes/g")
echo "element-skeleton.html $size"
