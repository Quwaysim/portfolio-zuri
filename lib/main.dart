import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Color _headerTextColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(primaryColor: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Portfolio'),
        ),
        body: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
                color: Colors.blueGrey[700],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'QAASIM, Muhammad Akorede',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17.0,
                                color: _headerTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '(Quwaysim)',
                              style: TextStyle(color: _headerTextColor),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'Android Developer (Flutter x Native)',
                              style: TextStyle(color: _headerTextColor),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 200.0,
                        backgroundImage: AssetImage('images/quwaysim.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    DetailsListCard(
                      iconData: Icons.link,
                      title: 'Github',
                      subtitle: 'https://github.com/Quwaysim',
                    ),
                    DetailsListCard(
                      iconData: Icons.language,
                      title: 'Website',
                      subtitle: 'https://quwaysim.github.io',
                    ),
                    DetailsListCard(
                      iconData: Icons.phone_outlined,
                      title: 'Mobile',
                      subtitle: '+2348169092228',
                    ),
                    DetailsListCard(
                      iconData: Icons.email_outlined,
                      title: 'Website',
                      subtitle: 'qaasim405@gmail.com',
                    ),
                    DetailsListCard(
                      padding: 16.0,
                      iconData: Icons.widgets_outlined,
                      title: 'Skills and Tools',
                      subtitle:
                          'Android Studio; Native Android Dev - Java, Multiplatform - Flutter',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailsListCard extends StatelessWidget {
  final iconData;
  final title;
  final subtitle;
  final double padding;

  const DetailsListCard(
      {this.iconData, this.title, this.subtitle, this.padding});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Color(0x22607D8B),
        ),
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(vertical: padding ?? 0.0, horizontal: 16.0),
          leading: Icon(iconData),
          title: Text(title),
          subtitle: Text(subtitle),
        ),
      ),
    );
  }
}
