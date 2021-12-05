import 'package:flutter/material.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final passwordMap = ModalRoute.of(context)?.settings.arguments
        as Map<String, List<dynamic>>;
    final entriesList = passwordMap.entries.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Manager'),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: entriesList.length,
              itemBuilder: (_, i) {
                final item = entriesList[i];

                return ListTile(
                  minVerticalPadding: 6,
                  title: Text(
                    item.key.toString().toUpperCase(),
                    style: const TextStyle(fontSize: 18),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.value[0],
                        style: const TextStyle(fontSize: 16),
                      ),
                      Text(
                        item.value[1],
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                );
              })),
    );
  }
}
