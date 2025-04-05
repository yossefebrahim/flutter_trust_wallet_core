part of flutter_trust_wallet_core;

/// Represents a Bech32 format handler for addresses.
class Bech32 {
  /// Encode data with the given human-readable part into a Bech32 address.
  ///
  /// @param hrp Human-readable part
  /// @param data Data to encode
  /// @return Encoded Bech32 address string
  static String encode(String hrp, Uint8List data) {
    return Bech32Impl.encode(hrp, data);
  }

  /// Validates whether a string is a valid Bech32 address.
  ///
  /// @param address Address to validate
  /// @return true if the address is valid, false otherwise
  static bool isValidAddress(String address) {
    return Bech32Impl.isValidAddress(address);
  }
}
