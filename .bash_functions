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

man() {
     env LESS_TERMCAP_mb=$'\E[01;31m' \
     LESS_TERMCAP_md=$'\E[01;31m'\
     LESS_TERMCAP_me=$'\E[0m'\
     LESS_TERMCAP_se=$'\E[0m'\
     LESS_TERMCAP_so=$'\E[01;40;33m'\
     LESS_TERMCAP_ue=$'\E[0m'\
     LESS_TERMCAP_us=$'\E[01;36m'\
     man "$@"
}


# Screenshot

function screenshot() { shot=~/screenshots/$(date +%F-%T).png; maim -s "$shot"; imgurbash "$shot"; }

# Open man page as PDF

function manpdf() {
 man -t "${1}" | open -f -a /Applications/Preview.app/
}


# Determine size of a file or total size of a directory

function fs() {
	if du -b /dev/null > /dev/null 2>&1; then
		local arg=-sbh;
	else
		local arg=-sh;
	fi
	if [[ -n "$@" ]]; then
		du $arg -- "$@";
	else
		du $arg .[^.]* ./*;
	fi;
}


# Use Git’s colored diff when available

hash git &>/dev/null;
if [ $? -eq 0 ]; then
	function diff() {
		git diff --no-index --color-words "$@";
	}
fi;


# Create a git.io short URL

function gitio() {
	if [ -z "${1}" -o -z "${2}" ]; then
		echo "Usage: \`gitio slug url\`";
		return 1;
	fi;
	curl -i https://git.io/ -F "url=${2}" -F "code=${1}";
}

# `n` with no arguments opens the current directory in NVim, otherwise opens the
# given location

function n() {
	if [ $# -eq 0 ]; then
		nvim .;
	else
		nvim "$@";
	fi;
}

# `tre` is a shorthand for `tree` with hidden files and color enabled, ignoring
# the `.git` directory, listing directories first. The output gets piped into
# `less` with options to preserve color and line numbers, unless the output is
# small enough for one screen.

function tre() {
	tree -aC -I '.git|node_modules|bower_components' --dirsfirst "$@" | less -FRNX;
}

streamer() { youtube-dl -o - "$1" | mpv - }

downloadAllDocument(){ wget --no-check-certificate -H -r -l 1 -nd -A "$2" "$1"; }
downloadAllImages(){ wget --no-check-certificate -nd -H -p -A jpg,jpeg,png,gif -e robots=off "$1"; }
dlmp3(){ wget -r -l1 -H -t1 -nd -N -np -A.mp3 -erobots=off "$1"; }

live() {
    qemu-img create -f raw live 8G
    qemu-system-x86_64 -enable-kvm -cpu host -m 4096 -drive file=live,format=raw -cdrom "$1"
    rm live
}

stopwatch(){
  date1=`date +%s`;
   while true; do
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
    sleep 0.1
   done
}
