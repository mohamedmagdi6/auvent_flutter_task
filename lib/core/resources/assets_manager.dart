const String imagePath = "assets/image";
const String iconsPath = "assets/icons";

// assets/images/splash_screen.png
abstract class ImageAssets {
  static const String splashLogo = "$imagePath/nawel.png";
  static const String onboarding = "$imagePath/on_boarding.png";
  static const String appLogo = "$imagePath/nawel_logo.png";
  static const String burger = "$imagePath/burger.png";
  static const String groceries = "$imagePath/groceries.png";
  static const String health = "$imagePath/health.png";
  static const String nawelsLetter = "$imagePath/nawel_letter.png";
  static const String securityVault = "$imagePath/Security Vault.png";
}

// icons assets path
abstract class IconsAssets {
  static const String mailIcon = "$iconsPath/ic_outline-mail.svg";
  static const String passwordIcon = "$iconsPath/mdi_password-outline.svg";
  static const String bestSellerIcon = "$iconsPath/best seller.svg";
  static const String giveBackIcon = "$iconsPath/give back.svg";
  static const String mustTriesIcon = "$iconsPath/must tries.svg";
  static const String pastOrdersIcon = "$iconsPath/past order.svg";
  static const String superSaverIcon = "$iconsPath/super saver.svg";
}
