# trust_wallet_core

A Flutter plugin for trust wallet core, Can access all api list in [https://github.com/trustwallet/wallet-core/tree/master/include/TrustWalletCore](https://github.com/trustwallet/wallet-core/tree/master/include/TrustWalletCore)

# Android
Add 
```
class MainActivity: FlutterActivity() {
    init {
        System.loadLibrary("TrustWalletCore")
    }
}
 ```
in your android project MainActivity.kt file

minSdk require >=23

# iOS

min ios platform support >=13.0


# dart part
before use wallet_core, call below function once.
```
 FlutterTrustWalletCore.init();
```

Then you are ready to run.


# IMPORTANT

Because official lib build flag in CmakeLists.txt  set(CMAKE_CXX_VISIBILITY_PRESET hidden), that will cause android exception when dart ffi lookup function.



Please refer to  [My other repo](https://github.com/weishirongzhen/flutter_trust_wallet_core_lib_include)  to run full demo,
also, replace you own build to ensure safety.
build step: follow [Official build step](https://developer.trustwallet.com/wallet-core/developing-the-library/building) to prepare your build env , then change 
```
 set(CMAKE_CXX_VISIBILITY_PRESET hidden)
```
 to
```
 set(CMAKE_CXX_VISIBILITY_PRESET default)
```
build project, replace your own output in [My other repo](https://github.com/weishirongzhen/flutter_trust_wallet_core_lib_include). 
