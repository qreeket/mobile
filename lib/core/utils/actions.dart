import 'package:url_launcher/url_launcher.dart';

void openWhatsappChat() async {
  final url = Uri.parse('https://wa.me/233554022344');
  if (await canLaunchUrl(url)) await launchUrl(url);
}

void openGithubRepo() async {
  final url = Uri.parse('https://github.com/quabynah-bilson/qreeket');
  if (await canLaunchUrl(url)) await launchUrl(url);
}

void openTermsOfUse() async {
  final url =
      Uri.parse('https://quabynah-bilson.github.io/qreeket/docs/terms_of_use');
  if (await canLaunchUrl(url)) await launchUrl(url);
}

void openPrivacyPolicy() async {
  final url =
      Uri.parse('https://quabynah-bilson.github.io/qreeket/docs/privacy');
  if (await canLaunchUrl(url)) await launchUrl(url);
}

void openTwitterProfile() async {
  final url = Uri.parse('https://twitter.com/dennis_bilson');
  if (await canLaunchUrl(url)) await launchUrl(url);
}

void openFacebookProfile() async {
  final url = Uri.parse('https://m.facebook.com/dennis.bilson');
  if (await canLaunchUrl(url)) await launchUrl(url);
}

void openYoutubeChannel() async {
  final url = Uri.parse('https://www.youtube.com/@qcodelabsllc');
  if (await canLaunchUrl(url)) await launchUrl(url);
}
