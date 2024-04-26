
import 'package:api_version_7/view_model/anim_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late AnimView _animView;
  bool _isFirst = false;

  @override
  void initState() {
    _isFirst = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_isFirst) {
      _animView = Provider.of<AnimView>(context);
      _animView.getMangas();
      _animView.getAnimes();
      _isFirst = false;
    }

    return Scaffold(
      body: _getTheAnimAndManga(),
    );
  }

  _getTheAnimAndManga() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [_getAnim(),
          const Gap(50),
          _getManga()],
      ),
    );
  }

  _getAnim() {
    return SizedBox(
      height: 450,
      width: double.infinity,
      child: CarouselSlider.builder(
          itemCount: _animView.animList.length,
          itemBuilder: (context, index, pageIndex) {
            final anim = _animView.animList[index];
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network("${anim.attributes?.posterImage?.large}",
                    fit: BoxFit.cover),
              ),
            );
          },
          options: CarouselOptions(
              height: 400, viewportFraction: 0.7, enlargeCenterPage: true)),
    );
  }

  _getManga() {
    return SizedBox(
      height: 450,
      width: double.infinity,
      child: CarouselSlider.builder(
          itemCount: _animView.mangaList.length,
          itemBuilder: (context, index, pageIndex) {
            final manga = _animView.mangaList[index];
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network("${manga.attributes?.posterImage?.large}",
                    fit: BoxFit.cover),
              ),
            );
          },
          options: CarouselOptions(
            height: 400,
            enlargeCenterPage: true,
            viewportFraction: 0.7,
          )),
    );
  }
}
