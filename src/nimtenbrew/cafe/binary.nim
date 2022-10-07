import binarylang

struct(*wuhbFile, endian = b):
    u32: parentOffset
    u32: siblingOffset
    u64: *dataOffset
    u64: *dataSize
    u32: nextHash
    u32: nameLength
    u8: name[nameLength]

const WUHB_FILE_SIZE* = 0x20.int

struct(*wuhbHeader, endian = b):
    u32: headerSize
    u64: dirHashTableOffset
    u64: dirHashTableSize
    u64: dirTableOffset
    u64: dirTableSize
    u64: fileHashTableOffset
    u64: fileHashTableSize
    u64: fileTableOffset
    u64: fileTableSize
    u64: fileDataOffset

const WUHB_HEADER_SIZE* = 0x50.int
