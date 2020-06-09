top:; @date

find :=   find ext -type f -name '*.mk'
find += | sed -e s/^ext.//

jq :=   map(split("/"))
jq += | reduce .[] as $$i ({}; .[$$i[-1]] += ($$i[0:-1] | reduce .[] as $$i ({}; . += { $$i: null })))
jq += | with_entries(.value = (.value | keys))

# https://github.com/stedolan/jq/issues/243
showpaths := path(..)|[.[]|tostring]|join("/")

main:; @$(find) | jq -R '[inputs] | $(jq)'
