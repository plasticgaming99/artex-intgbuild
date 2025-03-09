cd ./source/llvm-project-19.1.3.src/build
local target
ninja -t targets | grep -Po 'install-\K.*(?=-stripped:)' | while read -r target; do
case $target in
  LTO)
    continue
    ;;
  clang-libraries|distribution)
    continue
    ;;
  clang|clangd|clang-*)
    ;;
  clang*|findAllSymbols)
    continue
    ;;
  LLVM*|llvm*)
    continue
    ;;
esac
echo $target
done
cd -
