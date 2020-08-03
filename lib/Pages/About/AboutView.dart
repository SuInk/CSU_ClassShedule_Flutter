import '../../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Utils/UpdateUtil.dart';
import '../../Resources/Url.dart';
import 'Widgets/RainDropWidget.dart';

class AboutView extends StatefulWidget {
  AboutView() : super();

  @override
  _AboutViewState createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeeeeee),
        appBar: AppBar(
          title: Text(S.of(context).about_title),
        ),
        body: Stack(children: [
          RainDropWidget(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height),
          SingleChildScrollView(
              child: new Column(children: <Widget>[
            new Container(
              child: Image.asset("res/icon.png"),
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.center,
              width: 150,
            ),
            new Container(
              child: Text(S.of(context).app_name),
            ),
            new Container(
                child: FutureBuilder<String>(
                    future: _getVersion(),
                    builder:
                        (BuildContext context, AsyncSnapshot<String> snapshot) {
                      if (!snapshot.hasData) {
                        return Container();
                      } else {
                        return Text(snapshot.data);
                      }
                    })),
            new Container(
              child: FlatButton(
                child: Text(S.of(context).check_update_button),
                color: Colors.white,
                onPressed: () {
                  UpdateUtil updateUtil = new UpdateUtil();
                  updateUtil.checkUpdate(context, true);
                },
              ),
            ),
            _generateTitle(S.of(context).github_open_source),
            _generateContent(Url.OPEN_SOURCE_URL,
                onTap: () => launch(Url.OPEN_SOURCE_URL)),
            _generateTitle(S.of(context).developer),
            _generateContent(S.of(context).introduction,
                onTap: () => launch(Url.BLOG_URL)),
            _generateTitle(S.of(context).open_source_library_title),
            _generateContent(S.of(context).open_source_library_content),
            _generateTitle(S.of(context).easter_egg),
          ]))
        ]));
  }

  Future<String> _getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version + S.of(context).flutter_lts;
  }

  Widget _generateTitle(String text) {
    return new Container(
      padding: const EdgeInsets.all(15.0),
      child: Text(text),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateContent(String text, {onTap}) {
    return new InkWell(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(10.0),
        color: Colors.white,
        child: Text(text),
        alignment: Alignment.centerLeft,
      ),
      onTap: onTap,
    );
  }
}
