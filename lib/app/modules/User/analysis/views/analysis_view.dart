import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safeloan/app/utils/warna.dart';
import 'package:safeloan/app/widgets/button_widget.dart';
import '../controllers/analysis_controller.dart';

class AnalysisView extends GetView<AnalysisController> {
  const AnalysisView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Analisis Keuangan',
          style: Utils.header,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                width: Get.width * 0.75,
                height: 120,
                decoration: BoxDecoration(
                  color: Utils.biruLima,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Hi, aku robo-apa. aku adalah asisten virtual AI yang akan mendampingimu di dalam aplikasi Kelola.In!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.center,
                child: Image(
                  fit: BoxFit.cover,
                  width: 250,
                  image: AssetImage('assets/images/maskot.png'),
                ),
              ),
              const SizedBox(height: 20),
              ButtonWidget(
                onPressed: () => Get.toNamed('analysis-result'),
                nama: 'Analisis',
              ),
            ],
          ),
        ),
      ),
    );
  }
}