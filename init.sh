if [[ -z "$1" ]]; then
    echo "Usage: $0 <ClassName>" >&2
    exit 1
fi

set -euxo pipefail

sed -i "s/Library/${1}/g" "lib/src/main/java/org/APCSLowell/Library.java"
sed -i "s/Library/${1}/g" "lib/src/test/java/org/APCSLowell/LibraryTest.java"
mv "lib/src/main/java/org/APCSLowell/Library.java" "lib/src/main/java/org/APCSLowell/${1}.java"
mv "lib/src/test/java/org/APCSLowell/LibraryTest.java" "lib/src/test/java/org/APCSLowell/${1}Test.java"