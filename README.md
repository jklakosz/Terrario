# Terrario

Terrario aims to be a personal project before a real game for now. It is mostly an OpenGL learning project at the moment.

## Build

### Windows

Commands to build:

```
$> mkdir -p .Build/conan && cd .Build/conan
$> conan install ../.. --build=missing -s arch=x86_64
$> cmake build ../.. -G "Visual Studio 16 2019" -DCMAKE_BUILD_TYPE=Release -DGLFW_INCLUDE_NONE=1
```

### MacOS

#### Intel

```
$> mkdir -p .Build/conan && cd .Build/conan
$> conan install ../.. --build=missing -s arch=x86_64
$> cmake build ../.. -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DGLFW_INCLUDE_NONE=1
```

#### M1

Commands to build:

```
$> mkdir -p .Build/conan && cd .Build/conan
$> conan install ../.. --build=missing -s arch=armv8
$> cmake build ../.. -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DGLFW_INCLUDE_NONE=1
```