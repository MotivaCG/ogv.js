suffix=so
if [ `uname -s` == "Darwin" ]; then
  suffix=dylib
fi

EMCC_COMMON_OPTIONS="
-O3
-s VERBOSE=1
-s ERROR_ON_UNDEFINED_SYMBOLS=1
-s INVOKE_RUN=0
-s NO_EXIT_RUNTIME=1
-s NODEJS_CATCH_EXIT=0
-s MODULARIZE=1
"

EMCC_ASMJS_OPTIONS="
-s WASM=0
-s LEGACY_VM_SUPPORT=1
--memory-init-file 0
"

EMCC_WASM_OPTIONS="
-s WASM=1
-s BINARYEN_IGNORE_IMPLICIT_TRAPS=1
-s ALLOW_MEMORY_GROWTH=1
"

EMCC_NOTHREAD_OPTIONS="
--closure 1
-s NO_FILESYSTEM=1
"

EMCC_THREADED_OPTIONS="
-s USE_PTHREADS=1
-s PTHREAD_POOL_SIZE=1
"
