# bin/sh

PROTOS_DIR=protos
OUT_DIR=lib/generated/protos

# Create generated directories
mkdir -p $OUT_DIR

# Generate Rust protobufs for auth
protoc -I=$PROTOS_DIR --dart_out=grpc:$OUT_DIR $(find $PROTOS_DIR -iname "*.proto")