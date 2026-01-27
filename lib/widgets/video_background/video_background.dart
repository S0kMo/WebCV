import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoBackground extends StatefulWidget {
  final String videoPath;
  final Widget child;
  final double opacity;
  final double blurRadius;

  const VideoBackground({
    super.key,
    required this.videoPath,
    required this.child,
    this.opacity = 0.7,
    this.blurRadius = 0.5,
  });

  @override
  State<VideoBackground> createState() => _VideoBackgroundState();
}

class _VideoBackgroundState extends State<VideoBackground> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    _controller = VideoPlayerController.asset(widget.videoPath);
    try {
      await _controller.initialize();
      _controller.setLooping(true);
      _controller.setVolume(0.0);
      _controller.play();
      setState(() {
        _isInitialized = true;
      });
    } catch (e) {
      debugPrint('Error initializing video: $e');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: Colors.black,
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Video background with blur effect
              if (_isInitialized)
                Positioned.fill(
                  child: Stack(
                    children: [
                      // Video player - ensure it covers the entire area
                      Positioned.fill(
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: SizedBox(
                            width: _controller.value.size.width,
                            height: _controller.value.size.height,
                            child: VideoPlayer(_controller),
                          ),
                        ),
                      ),
                      // Blur overlay using semi-transparent color
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(widget.blurRadius * 0.5),
                              Colors.black.withOpacity(widget.blurRadius * 0.8),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              else
                Positioned.fill(child: Container(color: Colors.black)),
              // Overlay for opacity control
              Positioned.fill(
                child: Container(
                  color: Colors.black87.withOpacity(0.7 - widget.opacity),
                ),
              ),
              // Content on top
              Positioned.fill(child: widget.child),
            ],
          ),
        );
      },
    );
  }
}
