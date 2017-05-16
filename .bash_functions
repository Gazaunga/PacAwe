# pack function
function pack () {
    args="$@"
    if [[ ! -d "$args" ]]; then
        echo "$args is not a directory (or multiple directories/files have been supplied)"
    else
        echo "packing: $args"
        filename="$(echo "$args" | sed 's/\[/_/g;s/\]/_/g;s/(/_/g;s/)/_/g')"
        filename="${filename%/}"
        filename="${filename}.tar.gz"
        tar czf "$filename" "$args" && \
        echo "Packed file has been written to: $filename"
    fi
}
