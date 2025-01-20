import 'video_tutorial_model.dart';

class VideoTutorialService {
  // This method could fetch tutorial data from Firebase or local storage
  static Future<List<VideoTutorial>> fetchTutorials() async {
    // Simulated static data for now
    return [
      VideoTutorial(
        title: 'How to Adjust Shock Compression',
        description: 'Learn how to adjust the shock compression settings for better ride quality.',
        videoUrl: 'https://yourvideourl.com/tutorial1',
      ),
      VideoTutorial(
        title: 'How to Adjust Shock Rebound',
        description: 'Learn how to adjust the shock rebound settings for smoother performance.',
        videoUrl: 'https://yourvideourl.com/tutorial2',
      ),
    ];
  }
}
