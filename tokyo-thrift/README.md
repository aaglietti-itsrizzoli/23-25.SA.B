# Thrift

Thrift is an IDL (Interface Definition Language) and binary communication protocol used for defining and creating services for programming languages.

It was developed by Facebook.

Since 2020, it is an open source project in the Apache Software Foundation.

https://thrift.apache.org/

## TL;DR

From inside this folder run

`../thrift-0.20.0/  

## Types

The first thing to know about are types. The available types in Thrift are:
- bool        Boolean, one byte
- i8 (byte)   Signed 8-bit integer
- i16         Signed 16-bit integer
- i32         Signed 32-bit integer
- i64         Signed 64-bit integer
- double      64-bit floating point value
- string      String
- binary      Blob (byte array)
- map<t1,t2>  Map from one type to another
- list<t1>    Ordered list of one type
- set<t1>     Set of unique elements of one type
