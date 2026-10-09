import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback? onPressed;
  final String? url;

  const AppButton({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
    this.url,
  });

  Future<void> _handlePressed() async {
    if (onPressed != null) {
      onPressed!();
    } else if (url != null) {
      final Uri uri = Uri.parse(url!);
      
      // Menggunakan try-catch agar langsung mencoba membuka aplikasi Maps
      try {
        final bool launched = await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
        
        if (!launched) {
          debugPrint('Tidak dapat membuka URL: $url');
        }
      } catch (e) {
        debugPrint('Error saat membuka lokasi: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (onPressed != null || url != null) ? _handlePressed : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon),
              const SizedBox(width: 8),
            ],
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}