abstract class ModalBottomSheetHelpers {
  static String getAppSignInEmailText(String lang) {
    if (lang == 'en') {
      return "Sign in first so that you can apply for a job, manage your account, check notifications and more";
    }
    return "Masuk dulu untuk lamar kerja, ngatur akun, cek notifikasi, dan hal lainnya";
  }

  static String getPartnersSignInEmailText(String lang) {
    if (lang == 'en') {
      return "Sign in first so that you can recruit, manage your account, check notifications, and more";
    }
    return "Masuk dulu untuk rekrut, ngatur akun, cek notifikasi, dan hal lainnya";
  }
}
