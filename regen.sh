TC_DIR=$HOME/tc
CLANG_DIR=$TC_DIR/clang-r522817

export PATH="$CLANG_DIR/bin:$PATH"

DEFCONFIG="vendor/tundra-qgki_defconfig"
make O=out ARCH=arm64 $DEFCONFIG savedefconfig LLVM=1 LLVM_IAS=1

cp out/defconfig arch/arm64/configs/$DEFCONFIG
