//===- ValueTypes.td - ValueType definitions ---------------*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// Value types - These values correspond to the register types defined in the
// ValueTypes.h file.  If you update anything here, you must update it there as
// well!
//
//===----------------------------------------------------------------------===//

class ValueType<int size, int value> {
  string Namespace = "MVT";
  int Size = size;
  int Value = value;
}

def OtherVT: ValueType<0  ,  0>;   // "Other" value
def i1     : ValueType<1  ,  1>;   // One bit boolean value
def i8     : ValueType<8  ,  2>;   // 8-bit integer value
def i16    : ValueType<16 ,  3>;   // 16-bit integer value
def i32    : ValueType<32 ,  4>;   // 32-bit integer value
def i64    : ValueType<64 ,  5>;   // 64-bit integer value
def i128   : ValueType<128,  6>;   // 128-bit integer value
def f16    : ValueType<16 ,  7>;   // 32-bit floating point value
def f32    : ValueType<32 ,  8>;   // 32-bit floating point value
def f64    : ValueType<64 ,  9>;   // 64-bit floating point value
def f80    : ValueType<80 , 10>;   // 80-bit floating point value
def f128   : ValueType<128, 11>;   // 128-bit floating point value
def ppcf128: ValueType<128, 12>;   // PPC 128-bit floating point value

def v2i1   : ValueType<2 ,  13>;   //  2 x i1  vector value
def v4i1   : ValueType<4 ,  14>;   //  4 x i1  vector value
def v8i1   : ValueType<8 ,  15>;   //  8 x i1  vector value
def v16i1  : ValueType<16,  16>;   // 16 x i1  vector value
def v32i1  : ValueType<32 , 17>;   // 32 x i1  vector value
def v64i1  : ValueType<64 , 18>;   // 64 x i1  vector value
def v2i8   : ValueType<16 , 19>;   //  2 x i8  vector value
def v4i8   : ValueType<32 , 20>;   //  4 x i8  vector value
def v8i8   : ValueType<64 , 21>;   //  8 x i8  vector value
def v16i8  : ValueType<128, 22>;   // 16 x i8  vector value
def v32i8  : ValueType<256, 23>;   // 32 x i8 vector value
def v64i8  : ValueType<512, 24>;   // 64 x i8 vector value
def v1i16  : ValueType<16 , 25>;   //  1 x i16 vector value
def v2i16  : ValueType<32 , 26>;   //  2 x i16 vector value
def v4i16  : ValueType<64 , 27>;   //  4 x i16 vector value
def v8i16  : ValueType<128, 28>;   //  8 x i16 vector value
def v16i16 : ValueType<256, 29>;   // 16 x i16 vector value
def v32i16 : ValueType<512, 30>;   // 32 x i16 vector value
def v1i32  : ValueType<32 , 31>;   //  1 x i32 vector value
def v2i32  : ValueType<64 , 32>;   //  2 x i32 vector value
def v4i32  : ValueType<128, 33>;   //  4 x i32 vector value
def v8i32  : ValueType<256, 34>;   //  8 x i32 vector value
def v16i32 : ValueType<512, 35>;   // 16 x i32 vector value
def v1i64  : ValueType<64 , 36>;   //  1 x i64 vector value
def v2i64  : ValueType<128, 37>;   //  2 x i64 vector value
def v4i64  : ValueType<256, 38>;   //  4 x i64 vector value
def v8i64  : ValueType<512, 39>;   //  8 x i64 vector value
def v16i64 : ValueType<1024,40>;   // 16 x i64 vector value

def v2f16  : ValueType<32 , 41>;   //  2 x f16 vector value
def v8f16  : ValueType<128, 42>;   //  8 x f16 vector value
def v2f32  : ValueType<64 , 43>;   //  2 x f32 vector value
def v4f32  : ValueType<128, 44>;   //  4 x f32 vector value
def v8f32  : ValueType<256, 45>;   //  8 x f32 vector value
def v16f32 : ValueType<512, 46>;   // 16 x f32 vector value
def v2f64  : ValueType<128, 47>;   //  2 x f64 vector value
def v4f64  : ValueType<256, 48>;   //  4 x f64 vector value
def v8f64  : ValueType<512, 49>;   //  8 x f64 vector value


def x86mmx : ValueType<64 , 50>;   // X86 MMX value
def FlagVT : ValueType<0  , 51>;   // Pre-RA sched glue
def isVoid : ValueType<0  , 52>;   // Produces no value
def untyped: ValueType<8  , 53>;   // Produces an untyped value
def MetadataVT: ValueType<0, 250>; // Metadata

// Pseudo valuetype mapped to the current pointer size to any address space.
// Should only be used in TableGen.
def iPTRAny   : ValueType<0, 251>;

// Pseudo valuetype to represent "vector of any size"
def vAny   : ValueType<0  , 252>;

// Pseudo valuetype to represent "float of any format"
def fAny   : ValueType<0  , 253>;

// Pseudo valuetype to represent "integer of any bit width"
def iAny   : ValueType<0  , 254>;

// Pseudo valuetype mapped to the current pointer size.
def iPTR   : ValueType<0  , 255>;
