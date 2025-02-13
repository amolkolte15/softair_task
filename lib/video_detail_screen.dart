import 'package:flutter/material.dart';
import 'package:task1/video_player_widget.dart';

class VideoDetailScreen extends StatelessWidget {
  const VideoDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                VideoPlayerWidget(),
                Positioned(
                  top: 40,
                  left: 20,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 60,
                  child: IconButton(
                    icon: const Icon(Icons.settings, color: Colors.white),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                ListTile(
                                  leading: Icon(Icons.hd),
                                  title: Text("Quality"),
                                  trailing: Text("Auto (480p)"),
                                ),
                                ListTile(
                                  leading: Icon(Icons.lock),
                                  title: Text("Lock screen"),
                                ),
                                ListTile(
                                  leading: Icon(Icons.speed),
                                  title: Text("Playback speed"),
                                  trailing: Text("Normal"),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: IconButton(
                    icon: const Icon(Icons.fullscreen, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Image.asset(
                          'lib/assets/logo.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    const TextSpan(
                      text: "MERCY TV",
                      style: TextStyle(color: Colors.yellow, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "HUQOOQUL IBAAD PART 14",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Text(
                "Is video mein Huqooqul ibaad ki Ahmiyat batayi Gayi hai, Is ke sath insano ke buniyadi taur par kya huqooq hai... See More",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                width: double.infinity, // Make the button full width
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text("Watchlist"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 15),
              child: Text(
                "You May Also Like",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            videoSuggestionTile("HUQOOQUL IBAAD PART 13", "24m"),
            videoSuggestionTile("HUQOOQUL IBAAD PART 12", "23m"),
            videoSuggestionTile("HUQOOQUL IBAAD PART 11", "22m"),
          ],
        ),
      ),
    );
  }

  Widget videoSuggestionTile(String title, String duration) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Container(
              width: 100,
              height: 60,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('lib/assets/image.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.play_circle_fill,
                  color: Colors.white, size: 30),
            ),
            title: Text(title,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(duration),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              "Is video mein Huqooqul ibaad ki Ahmiyat batayi Gayi hai, Is ke sath insano ke buniyadi taur par kya huqooq hai... See More",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
