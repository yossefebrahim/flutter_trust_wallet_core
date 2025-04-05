part of trust_wallet_core_ffi;

/// Bech32 encode/decode functions
abstract class TWBech32 {
  /// Decodes a Bech32 string into a pair (human-readable part, data).
  ///
  /// \param address a Bech32 address to decode
  /// \return the decoded data, empty if the address is not a valid Bech32 string
  static Pointer<Void> TWBech32Decode(
    Pointer<Utf8> address,
  ) {
    return _TWBech32Decode(
      address,
    );
  }

  static late final _TWBech32DecodePtr =
      _lookup<NativeFunction<Pointer<Void> Function(Pointer<Utf8>)>>(
          'TWBech32Decode');
  static late final _TWBech32Decode =
      _TWBech32DecodePtr.asFunction<Pointer<Void> Function(Pointer<Utf8>)>();

  /// Encode a Bech32 address from human-readable part and data.
  ///
  /// \param hrp human-readable part
  /// \param data data to encode
  /// \return encoded Bech32 address, empty on failure
  static Pointer<Utf8> TWBech32Encode(
    Pointer<Utf8> hrp,
    Pointer<Void> data,
  ) {
    return _TWBech32Encode(
      hrp,
      data,
    );
  }

  static late final _TWBech32EncodePtr = _lookup<
          NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>, Pointer<Void>)>>(
      'TWBech32Encode');
  static late final _TWBech32Encode = _TWBech32EncodePtr.asFunction<
      Pointer<Utf8> Function(Pointer<Utf8>, Pointer<Void>)>();

  /// Validates a Bech32 address.
  ///
  /// \param address a Bech32 address to validate
  /// \return true if the address is valid, false otherwise
  static int TWBech32ValidateAddress(
    Pointer<Utf8> address,
  ) {
    return _TWBech32ValidateAddress(
      address,
    );
  }

  static late final _TWBech32ValidateAddressPtr =
      _lookup<NativeFunction<Int32 Function(Pointer<Utf8>)>>(
          'TWBech32ValidateAddress');
  static late final _TWBech32ValidateAddress =
      _TWBech32ValidateAddressPtr.asFunction<int Function(Pointer<Utf8>)>();
}

final _typeProvider = walletCoreLib;
