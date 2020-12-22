import 'package:stellar_flutter_sdk/stellar_flutter_sdk.dart';

class StellarDao {

  String accountId = "GC7WS4A4DJOZ3AHQRMG3QOCRLJU3IOGOKSIOP6E5JVW7ZTANRUUKLMN7";

  final StellarSDK _sdkStellar = StellarSDK.TESTNET;

  Future<String> getAccount (String accountId) async {
    AccountResponse account = await _sdkStellar.accounts.account(accountId);
    return account.accountId;
  }

  Future<void> checkAccount (String accountId) async {

      // Request the account data.
      AccountResponse account = await _sdkStellar.accounts.account(accountId);

      // You can check the `balance`, `sequence`, `flags`, `signers`, `data` etc.
      for (Balance balance in account.balances) {
        switch (balance.assetType) {
          case Asset.TYPE_NATIVE:
            print("Balance: ${balance.balance} XLM");
            break;
          default:
            print("Balance: ${balance.balance} ${balance
                .assetCode} Issuer: ${balance.assetIssuer}");
        }
      }

      print("Sequence number: ${account.sequenceNumber}");

      for (Signer signer in account.signers) {
        print("Signer public key: ${signer.accountId}");
      }

      for (String key in account.data.keys) {
        print("Data key: ${key} value: ${account.data[key]}");
      }

  }

}