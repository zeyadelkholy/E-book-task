import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChaptersCard extends StatelessWidget {
  final String chapterNum;
  final String chapterName;
  final String tag;

  ChaptersCard({
    @required this.chapterNum,
    @required this.chapterName,
    @required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      child: Container(
            padding: EdgeInsets.symmetric(vertical: 17, horizontal: 30),
            width: MediaQuery.of(context).size.width - 45,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 30,
                    color: Color(0xFFD3D3D3).withOpacity(.84),
                  ),
                ],
            ),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '$chapterNum : $chapterName',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF393939),
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 30,
                      width: 200,
                      child: Text(
                          tag,
                          style: TextStyle(color: Color(0xFF8F8F8F),
                          ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
      ),
    );
  }
}
