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

  static String getSignInWithOtherAccText(String lang) {
    if (lang == 'en') {
      return "Sign in with other account";
    }
    return "Login dengan akun yang lain";
  }

  static String getTNCText(String lang) {
    if (lang == 'en') {
      return 'Terms & Conditions';
    }
    return 'Syarat & Ketentuan';
  }

  static String getPPText(String lang) {
    if (lang == 'en') {
      return 'Privacy Policy';
    }
    return 'Kebijakan privasi';
  }

  static String getAndText(String lang) {
    if (lang == 'en') {
      return 'and';
    }
    return 'dan';
  }

  static String getByClickSignUpText(String lang) {
    if (lang == 'en') {
      return 'By clicking Sign Up, Continue with Google, or Continue with Facebook, you agree to';
    }
    return 'Dengan memilih Daftar, Lanjutkan dengan Google atau Lanjutkan dengan Facebook, kamu telah setuju dengan';
  }
}
