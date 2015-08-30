@echo off
Setlocal EnableDelayedExpansion EnableExtensions


:: Determine if arch is 32/64 bits
if /I "%platform%"=="x86" ( set arch=32) else ( set arch=64)
call luarocks make luasec-0.6alpha-2.rockspec OPENSSL_DIR=c:\OpenSSL-Win%arch%
