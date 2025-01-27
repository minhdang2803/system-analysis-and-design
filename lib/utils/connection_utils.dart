import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionUtil {
  static final _connectivity = Connectivity();

  static Future<bool> hasInternetConnection() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    switch (connectivityResult) {
      case ConnectivityResult.mobile ||
            ConnectivityResult.wifi ||
            ConnectivityResult.ethernet:
        return true;

      default:
        return false;
    }
  }
}
