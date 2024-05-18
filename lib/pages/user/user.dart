// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:arkadag/generated/l10n.dart';
import 'package:arkadag/theme/manager/manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../maneger/manager_locale.dart';
import '../pages.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {


@override
 
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                _showLanguageDialog();
              }, icon: const Icon(Icons.language_outlined))
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Sahsy otag'),
        centerTitle: true,
      ),
      backgroundColor: theme.colorScheme.background,
      body: Consumer<ThemeManager>(
          builder: (context, ThemeManager notifier, child) {
        return Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const ProfilePic(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Center(
                child: Text(
                  'Atdaýew Ýazmyrat',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 80,
            ),
            DataRow(
              text: 'Ulanyjy barada',
              icon: const Icon(Icons.person_2_outlined),
              pressed: () {},
            ),
            DataRow(
              text: 'Gurallar',
              icon: const Icon(Icons.settings_outlined),
              pressed: () {},
            ),
            DataRow(
              text: S.of(context).biz_barada,
              icon: const Icon(Icons.info_outline),
              pressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Information()));
              },
            ),
            DataRow(
              text: S.of(context).otagdan_cykmak,
              icon: const Icon(Icons.output_outlined),
              pressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
            ),
            const SizedBox(height: 16,),
            Container(
              height: 1,
              decoration: const BoxDecoration(color: Colors.black),
              margin: const EdgeInsets.only(
                  left: 16, right: 16, top: 6, bottom: 12),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
              child: ListTile(
                leading: const Icon(Icons.dark_mode),
                title: const Text(
                  'Dark mode',
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Switch(
                  value: notifier.isDark,
                  onChanged: ((value) => notifier.toogleTheme()),
                ),
              ),
            ),Container(
              height: 1,
              decoration: const BoxDecoration(color: Colors.black),
              margin: const EdgeInsets.only(
                  left: 16, right: 16, top: 6, bottom: 12),
            ),
            const SizedBox(height: 30,),
              
          ],
        );
      }),
    );
  }
   void _showLanguageDialog() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Select Language'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _languageItem('Turkmen', const Locale.fromSubtags(languageCode: 'tk')),
            _languageItem('Russian', const Locale.fromSubtags(languageCode: 'ru')),
            _languageItem('English', const Locale.fromSubtags(languageCode: 'en')),
          ],
        ),
      );
    },
  );
}
  Widget _languageItem(String language, Locale locale) {
    return ListTile(
      title: Text(language),
      onTap: () {
        Provider.of<LocaleManager>(context, listen: false).setLocale(locale); // Обновляем язык через LocaleManager
      Navigator.pop(context);
        setState(() {});
        // Здесь вы можете добавить логику для обновления локализации приложения
      },
    );
  }
}


 
class DataRow extends StatelessWidget {
  const DataRow({
    super.key,
    required this.text,
    required this.icon,
    required this.pressed,
  });
  final String text;
  final Icon icon;
  final pressed;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: pressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(color: theme.primaryColor, fontSize: 16),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/yazik.jpg"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                  color: theme.colorScheme.background,
                  borderRadius: BorderRadius.circular(42)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: theme.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
