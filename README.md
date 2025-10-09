# wandbox-status

[Wandbox][] status  
[Wandbox][] new compiler notification: [wandbox-news](https://github.com/srz-zumix/wandbox-news)

## Status Page

[https://srz-zumix.github.io/wandbox-status/](https://srz-zumix.github.io/wandbox-status/)

## Status Badge

* Status badge  
  ```
  https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2F<< lang >>%2F<< version >>.json
  ```
* Head version badge  
  ```
  https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2Fhead-version%2F<< lang >>%2F<< version >>-version.json
  ```

### Language List

* [Bash script](#Bash-script)
* [C](#C)
* [C#](#C-1)
* [C++](#C-2)
* [CPP](#CPP)
* [Crystal](#Crystal)
* [D](#D)
* [Elixir](#Elixir)
* [Erlang](#Erlang)
* [Go](#Go)
* [Groovy](#Groovy)
* [Haskell](#Haskell)
* [Java](#Java)
* [JavaScript](#JavaScript)
* [Julia](#Julia)
* [Lazy K](#Lazy-K)
* [Lisp](#Lisp)
* [Lua](#Lua)
* [Nim](#Nim)
* [OCaml](#OCaml)
* [OpenSSL](#OpenSSL)
* [Pascal](#Pascal)
* [Perl](#Perl)
* [PHP](#PHP)
* [Pony](#Pony)
* [Python](#Python)
* [R](#R)
* [Ruby](#Ruby)
* [Rust](#Rust)
* [Scala](#Scala)
* [SQL](#SQL)
* [Swift](#Swift)
* [TypeScript](#TypeScript)
* [Vim script](#Vim-script)
* [Zig](#Zig)

### Head

[wandbox-builder GitHub Actions](https://github.com/melpon/wandbox-builder/actions/workflows/heads.yml)
 [![heads](https://github.com/melpon/wandbox-builder/actions/workflows/heads.yml/badge.svg)](https://github.com/melpon/wandbox-builder/actions/workflows/heads.yml)

|language|name|version|status|
|:------|:------|:-----|:-----|
|C|gcc-head-c|![gcc-head-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2Fhead-version%2FC%2Fgcc-head-c-version.json)|![gcc-head-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fgcc-head-c.json)|
|C|clang-head-c|![clang-head-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2Fhead-version%2FC%2Fclang-head-c-version.json)|![clang-head-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fclang-head-c.json)|
|C++|gcc-head|![gcc-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2Fhead-version%2FC%2B%2B%2Fgcc-head-version.json)|![gcc-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fgcc-head.json)|
|C++|clang-head|![clang-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2Fhead-version%2FC%2B%2B%2Fclang-head-version.json)|![clang-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fclang-head.json)|
|CPP|gcc-head-pp|![gcc-head-pp](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2Fhead-version%2FCPP%2Fgcc-head-pp-version.json)|![gcc-head-pp](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FCPP%2Fgcc-head-pp.json)|
|CPP|clang-head-pp|![clang-head-pp](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2Fhead-version%2FCPP%2Fclang-head-pp-version.json)|![clang-head-pp](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FCPP%2Fclang-head-pp.json)|
|D|gdc-head|![gdc-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2Fhead-version%2FD%2Fgdc-head-version.json)|![gdc-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FD%2Fgdc-head.json)|
|Python|cpython-head|![cpython-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2Fhead-version%2FPython%2Fcpython-head-version.json)|![cpython-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fcpython-head.json)|
|Python|cpython-2.7-head|![cpython-2.7-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2Fhead-version%2FPython%2Fcpython-2.7-head-version.json)|![cpython-2.7-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fcpython-2.7-head.json)|
|Zig|zig-head|![zig-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2Fhead-version%2FZig%2Fzig-head-version.json)|![zig-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FZig%2Fzig-head.json)|

### Bash script

|version|status|
|:------|:-----|
|bash|![bash](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FBash%2520script%2Fbash.json)|

### C

|version|status|
|:------|:-----|
|gcc-head-c|![gcc-head-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fgcc-head-c.json)|
|gcc-13.2.0-c|![gcc-13.2.0-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fgcc-13.2.0-c.json)|
|gcc-12.3.0-c|![gcc-12.3.0-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fgcc-12.3.0-c.json)|
|gcc-11.4.0-c|![gcc-11.4.0-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fgcc-11.4.0-c.json)|
|gcc-10.5.0-c|![gcc-10.5.0-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fgcc-10.5.0-c.json)|
|gcc-9.3.0-c|![gcc-9.3.0-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fgcc-9.3.0-c.json)|
|gcc-8.4.0-c|![gcc-8.4.0-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fgcc-8.4.0-c.json)|
|gcc-7.5.0-c|![gcc-7.5.0-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fgcc-7.5.0-c.json)|
|gcc-6.5.0-c|![gcc-6.5.0-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fgcc-6.5.0-c.json)|
|clang-head-c|![clang-head-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fclang-head-c.json)|
|clang-17.0.1-c|![clang-17.0.1-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fclang-17.0.1-c.json)|
|clang-16.0.4-c|![clang-16.0.4-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fclang-16.0.4-c.json)|
|clang-15.0.7-c|![clang-15.0.7-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fclang-15.0.7-c.json)|
|clang-14.0.6-c|![clang-14.0.6-c](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2Fclang-14.0.6-c.json)|

### C#

|version|status|
|:------|:-----|
|mono-6.12.0.199|![mono-6.12.0.199](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2523%2Fmono-6.12.0.199.json)|
|mono-5.20.1.34|![mono-5.20.1.34](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2523%2Fmono-5.20.1.34.json)|
|dotnetcore-8.0.402|![dotnetcore-8.0.402](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2523%2Fdotnetcore-8.0.402.json)|
|dotnetcore-6.0.425|![dotnetcore-6.0.425](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2523%2Fdotnetcore-6.0.425.json)|

### C++

|version|status|
|:------|:-----|
|gcc-head|![gcc-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fgcc-head.json)|
|gcc-13.2.0|![gcc-13.2.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fgcc-13.2.0.json)|
|gcc-12.3.0|![gcc-12.3.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fgcc-12.3.0.json)|
|gcc-11.4.0|![gcc-11.4.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fgcc-11.4.0.json)|
|gcc-10.5.0|![gcc-10.5.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fgcc-10.5.0.json)|
|gcc-9.3.0|![gcc-9.3.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fgcc-9.3.0.json)|
|gcc-8.4.0|![gcc-8.4.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fgcc-8.4.0.json)|
|gcc-7.5.0|![gcc-7.5.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fgcc-7.5.0.json)|
|gcc-6.5.0|![gcc-6.5.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fgcc-6.5.0.json)|
|clang-head|![clang-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fclang-head.json)|
|clang-17.0.1|![clang-17.0.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fclang-17.0.1.json)|
|clang-16.0.4|![clang-16.0.4](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fclang-16.0.4.json)|
|clang-15.0.7|![clang-15.0.7](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fclang-15.0.7.json)|
|clang-14.0.6|![clang-14.0.6](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FC%2B%2B%2Fclang-14.0.6.json)|

### CPP

|version|status|
|:------|:-----|
|gcc-head-pp|![gcc-head-pp](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FCPP%2Fgcc-head-pp.json)|
|clang-head-pp|![clang-head-pp](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FCPP%2Fclang-head-pp.json)|

### Crystal

|version|status|
|:------|:-----|
|crystal-1.13.3|![crystal-1.13.3](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FCrystal%2Fcrystal-1.13.3.json)|

### D

|version|status|
|:------|:-----|
|dmd-2.109.1|![dmd-2.109.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FD%2Fdmd-2.109.1.json)|
|gdc-head|![gdc-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FD%2Fgdc-head.json)|
|ldc-1.39.0|![ldc-1.39.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FD%2Fldc-1.39.0.json)|

### Elixir

|version|status|
|:------|:-----|
|elixir-1.17.3|![elixir-1.17.3](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FElixir%2Felixir-1.17.3.json)|
|elixir-1.16.3|![elixir-1.16.3](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FElixir%2Felixir-1.16.3.json)|

### Erlang

|version|status|
|:------|:-----|
|erlang-27.1|![erlang-27.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FErlang%2Ferlang-27.1.json)|
|erlang-26.2.5.3|![erlang-26.2.5.3](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FErlang%2Ferlang-26.2.5.3.json)|
|erlang-25.3.2.13|![erlang-25.3.2.13](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FErlang%2Ferlang-25.3.2.13.json)|

### Go

|version|status|
|:------|:-----|
|go-1.23.2|![go-1.23.2](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FGo%2Fgo-1.23.2.json)|
|go-1.22.8|![go-1.22.8](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FGo%2Fgo-1.22.8.json)|
|go-1.16.3|![go-1.16.3](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FGo%2Fgo-1.16.3.json)|
|go-1.15.11|![go-1.15.11](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FGo%2Fgo-1.15.11.json)|
|go-1.14.15|![go-1.14.15](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FGo%2Fgo-1.14.15.json)|

### Groovy

|version|status|
|:------|:-----|
|groovy-4.0.23|![groovy-4.0.23](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FGroovy%2Fgroovy-4.0.23.json)|

### Haskell

|version|status|
|:------|:-----|
|ghc-9.10.1|![ghc-9.10.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FHaskell%2Fghc-9.10.1.json)|
|ghc-9.0.1|![ghc-9.0.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FHaskell%2Fghc-9.0.1.json)|
|ghc-8.10.4|![ghc-8.10.4](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FHaskell%2Fghc-8.10.4.json)|

### Java

|version|status|
|:------|:-----|
|openjdk-jdk-22+36|![openjdk-jdk-22+36](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FJava%2Fopenjdk-jdk-22%2B36.json)|
|openjdk-jdk-21+35|![openjdk-jdk-21+35](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FJava%2Fopenjdk-jdk-21%2B35.json)|

### JavaScript

|version|status|
|:------|:-----|
|nodejs-20.17.0|![nodejs-20.17.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FJavaScript%2Fnodejs-20.17.0.json)|
|nodejs-18.20.4|![nodejs-18.20.4](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FJavaScript%2Fnodejs-18.20.4.json)|

### Julia

|version|status|
|:------|:-----|
|julia-1.10.5|![julia-1.10.5](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FJulia%2Fjulia-1.10.5.json)|
|julia-1.6.1|![julia-1.6.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FJulia%2Fjulia-1.6.1.json)|
|julia-1.0.5|![julia-1.0.5](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FJulia%2Fjulia-1.0.5.json)|

### Lazy K

|version|status|
|:------|:-----|
|lazyk|![lazyk](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FLazy%2520K%2Flazyk.json)|

### Lisp

|version|status|
|:------|:-----|
|clisp-2.49|![clisp-2.49](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FLisp%2Fclisp-2.49.json)|
|sbcl-2.4.9|![sbcl-2.4.9](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FLisp%2Fsbcl-2.4.9.json)|

### Lua

|version|status|
|:------|:-----|
|lua-5.4.7|![lua-5.4.7](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FLua%2Flua-5.4.7.json)|
|lua-5.3.6|![lua-5.3.6](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FLua%2Flua-5.3.6.json)|
|lua-5.2.4|![lua-5.2.4](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FLua%2Flua-5.2.4.json)|
|luajit-2.0.5|![luajit-2.0.5](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FLua%2Fluajit-2.0.5.json)|
|luajit-2.0.4|![luajit-2.0.4](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FLua%2Fluajit-2.0.4.json)|
|luajit-2.0.3|![luajit-2.0.3](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FLua%2Fluajit-2.0.3.json)|

### Nim

|version|status|
|:------|:-----|
|nim-2.2.4|![nim-2.2.4](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-2.2.4.json)|
|nim-2.2.2|![nim-2.2.2](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-2.2.2.json)|
|nim-2.2.0|![nim-2.2.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-2.2.0.json)|
|nim-2.0.16|![nim-2.0.16](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-2.0.16.json)|
|nim-2.0.14|![nim-2.0.14](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-2.0.14.json)|
|nim-2.0.10|![nim-2.0.10](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-2.0.10.json)|
|nim-2.0.8|![nim-2.0.8](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-2.0.8.json)|
|nim-2.0.6|![nim-2.0.6](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-2.0.6.json)|
|nim-2.0.4|![nim-2.0.4](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-2.0.4.json)|
|nim-2.0.2|![nim-2.0.2](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-2.0.2.json)|
|nim-2.0.0|![nim-2.0.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-2.0.0.json)|
|nim-1.6.20|![nim-1.6.20](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-1.6.20.json)|
|nim-1.6.18|![nim-1.6.18](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-1.6.18.json)|
|nim-1.6.14|![nim-1.6.14](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-1.6.14.json)|
|nim-1.6.12|![nim-1.6.12](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-1.6.12.json)|
|nim-1.6.10|![nim-1.6.10](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-1.6.10.json)|
|nim-1.6.8|![nim-1.6.8](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-1.6.8.json)|
|nim-1.6.6|![nim-1.6.6](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-1.6.6.json)|
|nim-1.6.4|![nim-1.6.4](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-1.6.4.json)|
|nim-1.6.0|![nim-1.6.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-1.6.0.json)|
|nim-1.4.8|![nim-1.4.8](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-1.4.8.json)|
|nim-1.4.6|![nim-1.4.6](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-1.4.6.json)|
|nim-1.2.8|![nim-1.2.8](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-1.2.8.json)|
|nim-1.0.10|![nim-1.0.10](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FNim%2Fnim-1.0.10.json)|

### OCaml

|version|status|
|:------|:-----|
|ocaml-5.2.0|![ocaml-5.2.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FOCaml%2Focaml-5.2.0.json)|
|ocaml-4.14.2|![ocaml-4.14.2](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FOCaml%2Focaml-4.14.2.json)|

### OpenSSL

|version|status|
|:------|:-----|
|openssl-3.3.2|![openssl-3.3.2](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FOpenSSL%2Fopenssl-3.3.2.json)|
|openssl-1.1.1w|![openssl-1.1.1w](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FOpenSSL%2Fopenssl-1.1.1w.json)|
|openssl-1.0.2u|![openssl-1.0.2u](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FOpenSSL%2Fopenssl-1.0.2u.json)|
|openssl-0.9.8zh|![openssl-0.9.8zh](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FOpenSSL%2Fopenssl-0.9.8zh.json)|

### Pascal

|version|status|
|:------|:-----|
|fpc-3.2.2|![fpc-3.2.2](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPascal%2Ffpc-3.2.2.json)|

### Perl

|version|status|
|:------|:-----|
|perl-5.42.0|![perl-5.42.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPerl%2Fperl-5.42.0.json)|
|perl-5.40.0|![perl-5.40.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPerl%2Fperl-5.40.0.json)|
|perl-5.38.0|![perl-5.38.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPerl%2Fperl-5.38.0.json)|
|perl-5.36.0|![perl-5.36.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPerl%2Fperl-5.36.0.json)|
|perl-5.34.0|![perl-5.34.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPerl%2Fperl-5.34.0.json)|
|perl-5.33.8|![perl-5.33.8](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPerl%2Fperl-5.33.8.json)|
|perl-5.32.1|![perl-5.32.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPerl%2Fperl-5.32.1.json)|
|perl-5.30.3|![perl-5.30.3](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPerl%2Fperl-5.30.3.json)|

### PHP

|version|status|
|:------|:-----|
|php-8.3.12|![php-8.3.12](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPHP%2Fphp-8.3.12.json)|
|php-8.2.24|![php-8.2.24](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPHP%2Fphp-8.2.24.json)|
|php-8.1.30|![php-8.1.30](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPHP%2Fphp-8.1.30.json)|
|php-8.0.30|![php-8.0.30](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPHP%2Fphp-8.0.30.json)|
|php-7.4.33|![php-7.4.33](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPHP%2Fphp-7.4.33.json)|
|php-5.6.40|![php-5.6.40](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPHP%2Fphp-5.6.40.json)|

### Pony

|version|status|
|:------|:-----|
|pony-0.58.5|![pony-0.58.5](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPony%2Fpony-0.58.5.json)|

### Python

|version|status|
|:------|:-----|
|cpython-head|![cpython-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fcpython-head.json)|
|cpython-2.7-head|![cpython-2.7-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fcpython-2.7-head.json)|
|cpython-3.14.0|![cpython-3.14.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fcpython-3.14.0.json)|
|cpython-3.13.8|![cpython-3.13.8](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fcpython-3.13.8.json)|
|cpython-3.12.7|![cpython-3.12.7](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fcpython-3.12.7.json)|
|cpython-3.11.10|![cpython-3.11.10](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fcpython-3.11.10.json)|
|cpython-3.10.15|![cpython-3.10.15](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fcpython-3.10.15.json)|
|cpython-3.9.20|![cpython-3.9.20](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fcpython-3.9.20.json)|
|cpython-3.8.20|![cpython-3.8.20](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fcpython-3.8.20.json)|
|cpython-3.7.17|![cpython-3.7.17](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fcpython-3.7.17.json)|
|cpython-2.7.18|![cpython-2.7.18](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fcpython-2.7.18.json)|
|pypy-3.10-v7.3.17|![pypy-3.10-v7.3.17](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fpypy-3.10-v7.3.17.json)|
|pypy-3.9-v7.3.16|![pypy-3.9-v7.3.16](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fpypy-3.9-v7.3.16.json)|
|pypy-3.8-v7.3.11|![pypy-3.8-v7.3.11](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fpypy-3.8-v7.3.11.json)|
|pypy-3.7-v7.3.9|![pypy-3.7-v7.3.9](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fpypy-3.7-v7.3.9.json)|
|pypy-2.7-v7.3.17|![pypy-2.7-v7.3.17](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FPython%2Fpypy-2.7-v7.3.17.json)|

### R

|version|status|
|:------|:-----|
|r-4.4.1|![r-4.4.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FR%2Fr-4.4.1.json)|

### Ruby

|version|status|
|:------|:-----|
|ruby-3.4.1|![ruby-3.4.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRuby%2Fruby-3.4.1.json)|
|ruby-3.3.6|![ruby-3.3.6](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRuby%2Fruby-3.3.6.json)|
|ruby-3.2.6|![ruby-3.2.6](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRuby%2Fruby-3.2.6.json)|
|ruby-3.1.6|![ruby-3.1.6](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRuby%2Fruby-3.1.6.json)|
|ruby-3.0.7|![ruby-3.0.7](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRuby%2Fruby-3.0.7.json)|
|mruby-3.0.0|![mruby-3.0.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRuby%2Fmruby-3.0.0.json)|
|mruby-2.1.2|![mruby-2.1.2](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRuby%2Fmruby-2.1.2.json)|

### Rust

|version|status|
|:------|:-----|
|rust-1.82.0|![rust-1.82.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.82.0.json)|
|rust-1.81.0|![rust-1.81.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.81.0.json)|
|rust-1.80.1|![rust-1.80.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.80.1.json)|
|rust-1.79.0|![rust-1.79.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.79.0.json)|
|rust-1.78.0|![rust-1.78.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.78.0.json)|
|rust-1.77.2|![rust-1.77.2](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.77.2.json)|
|rust-1.76.0|![rust-1.76.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.76.0.json)|
|rust-1.75.0|![rust-1.75.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.75.0.json)|
|rust-1.74.1|![rust-1.74.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.74.1.json)|
|rust-1.73.0|![rust-1.73.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.73.0.json)|
|rust-1.72.1|![rust-1.72.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.72.1.json)|
|rust-1.71.1|![rust-1.71.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.71.1.json)|
|rust-1.70.0|![rust-1.70.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.70.0.json)|
|rust-1.69.0|![rust-1.69.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.69.0.json)|
|rust-1.68.2|![rust-1.68.2](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.68.2.json)|
|rust-1.67.1|![rust-1.67.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.67.1.json)|
|rust-1.66.1|![rust-1.66.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.66.1.json)|
|rust-1.65.0|![rust-1.65.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.65.0.json)|
|rust-1.64.0|![rust-1.64.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FRust%2Frust-1.64.0.json)|

### Scala

|version|status|
|:------|:-----|
|scala-3.5.1|![scala-3.5.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FScala%2Fscala-3.5.1.json)|
|scala-3.3.4|![scala-3.3.4](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FScala%2Fscala-3.3.4.json)|
|scala-2.13.15|![scala-2.13.15](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FScala%2Fscala-2.13.15.json)|

### SQL

|version|status|
|:------|:-----|
|sqlite-3.46.1|![sqlite-3.46.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FSQL%2Fsqlite-3.46.1.json)|
|sqlite-3.35.5|![sqlite-3.35.5](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FSQL%2Fsqlite-3.35.5.json)|

### Swift

|version|status|
|:------|:-----|
|swift-6.0.1|![swift-6.0.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FSwift%2Fswift-6.0.1.json)|
|swift-5.10.1|![swift-5.10.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FSwift%2Fswift-5.10.1.json)|

### TypeScript

|version|status|
|:------|:-----|
|typescript-5.6.2|![typescript-5.6.2](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FTypeScript%2Ftypescript-5.6.2.json)|

### Vim script

|version|status|
|:------|:-----|
|vim-9.1.0758|![vim-9.1.0758](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FVim%2520script%2Fvim-9.1.0758.json)|
|vim-8.2.5172|![vim-8.2.5172](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FVim%2520script%2Fvim-8.2.5172.json)|

### Zig

|version|status|
|:------|:-----|
|zig-head|![zig-head](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FZig%2Fzig-head.json)|
|zig-0.13.0|![zig-0.13.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FZig%2Fzig-0.13.0.json)|
|zig-0.9.1|![zig-0.9.1](https://img.shields.io/endpoint?url=https%3A%2F%2Fsrz-zumix.github.io%2Fwandbox-status%2Fshields%2FZig%2Fzig-0.9.1.json)|

[Wandbox]:https://wandbox.org/
[wandbox-news]:https://github.com/srz-zumix/wandbox-news
