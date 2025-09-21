import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InsurancePlansScreen extends StatelessWidget {
  const InsurancePlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final companies = [
      {"name": "TATA AIA Life Insurance", "url": "https://www.tataaia.com"},
      {"name": "Star Health Insurance", "url": "https://www.starhealth.in"},
      {"name": "Care Health Insurance", "url": "https://www.careinsurance.com"},
      {"name": "HDFC ERGO General Insurance", "url": "https://www.hdfcergo.com"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Insurance Plans / బీమా పథకాలు")),
      body: ListView.builder(
        itemCount: companies.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.security),
            title: Text(companies[index]["name"]!),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InsuranceWebView(
                    url: companies[index]["url"]!,
                    title: companies[index]["name"]!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class InsuranceWebView extends StatelessWidget {
  final String url;
  final String title;
  const InsuranceWebView({super.key, required this.url, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: WebViewWidget(controller: WebViewController()..loadRequest(Uri.parse(url))),
    );
  }
}
