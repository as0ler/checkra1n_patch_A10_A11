PLATFORM=$(uname)
PATCHED_FILE="checkra1n_patched"

if [ $PLATFORM = "Linux" ] ; then
    curl -LO "https://assets.checkra.in/downloads/linux/cli/x86_64/fa08102ba978746ff38fc4c1a0d2e8f231c2cbf79c7ef6d7b504e4683a5b7d05/checkra1n"
    bspatch checkra1n $PATCHED_FILE checkra1n_A10_A11_linux.patch
    chmod +x checkra1n_patched
    echo "The patch has been applied."
    echo "You can run it like so: sudo ./$PATCHED_FILE -c" # forgot that on linux you need to use sudo

elif [ $PLATFORM = "Darwin" ] ; then
    echo "Extracting the CLI tool from the checkra1n application."
    cp /Applications/checkra1n.app/Contents/MacOS/checkra1n .
    bspatch checkra1n $PATCHED_FILE checkra1n_A11_A10_mac.patch
    echo "The patch has been applied."
    echo "You can run it like so: ./$PATCHED_FILE -c"
fi
