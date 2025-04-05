part of trust_wallet_core_ffi;

class Bech32Impl {
  /// Decode a Bech32 string into a pair (human-readable part, data).
  static Pointer<Void> decode(String address) {
    final addressString = address.toNativeUtf8();
    final result = TWBech32.TWBech32Decode(addressString);
    calloc.free(addressString);
    return result;
  }

  /// Encode a hash into a Bech32 string with the given HRP (human-readable part).
  static String encode(String hrp, Uint8List data) {
    final hrpString = hrp.toNativeUtf8();
    final dataBytes = TWData.TWDataCreateWithBytes(
      data.toPointerUint8(),
      data.length,
    );

    final result = TWBech32.TWBech32Encode(hrpString, dataBytes);
    final dartString = result.toDartString();

    calloc.free(hrpString);
    TWData.TWDataDelete(dataBytes);
    TWString.TWStringDelete(result);

    return dartString;
  }

  /// Determines whether the given address is a valid Bech32 address.
  static bool isValidAddress(String address) {
    final addressString = address.toNativeUtf8();
    final result = TWBech32.TWBech32ValidateAddress(addressString) != 0;
    calloc.free(addressString);
    return result;
  }
}
