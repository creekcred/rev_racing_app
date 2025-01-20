import 'package:flutter/material.dart';
import 'video_tutorial_service.dart';  // Service to fetch tutorials
import 'video_tutorial_model.dart';   // Model to represent each tutorial
import 'video_player_widget.dart';    // Widget to display video

class TutorialsScreen extends StatelessWidget {
  const TutorialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shock Adjusting Tutorials'),
      ),
      body: FutureBuilder<List<VideoTutorial>>(
        future: VideoTutorialService.fetchTutorials(),  // Fetch tutorials from service
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error loading tutorials.'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No tutorials available.'));
          } else {
            // Display a list of tutorials
            List<VideoTutorial> tutorials = snapshot.data!;
            return ListView.builder(
              itemCount: tutorials.length,
              itemBuilder: (context, index) {
                final tutorial = tutorials[index];
                return ListTile(
                  title: Text(tutorial.title),
                  subtitle: Text(tutorial.description),
                  onTap: () {
                    // Navigate to video player widget
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPlayerWidget(tutorial: tutorial),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
