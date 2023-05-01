import 'package:flutter/material.dart';
import 'package:luna_notifications/luna_notifications.dart';

class SolidNotifications extends StatelessWidget {
  const SolidNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Solid notifications", style: Theme.of(context).textTheme.headlineMedium)]),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    LunaNotifications(
                      title: const Text(
                        "Info",
                      ),
                      description: const Text("Top left notification description"),
                      position: NotificationPosition.topLeft,
                      notificationType: NotificationType.info,
                      showCloseButton: false,
                      duration: const Duration(seconds: 10),
                    ).show(context);
                  },
                  child: const Text("Top Left Info"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    LunaNotifications(
                      title: const Text(
                        "Top message",
                      ),
                      description: const Text("Top center notification description"),
                      position: NotificationPosition.topCenter,
                      showCloseButton: false,
                    ).show(context);
                  },
                  child: const Text("Top Center Info"),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  LunaNotifications(
                    title: const Text(
                      "Success",
                    ),
                    description: const Text("Top right notification description"),
                    position: NotificationPosition.topRight,
                    actionIcon: const Icon(Icons.timer, color: Colors.white),
                    notificationType: NotificationType.success,
                    onActionPressed: () {
                      print("Action pressed");
                    },
                    onCloseButtonPressed: () {
                      print("Close pressed");
                    },
                    onDismiss: () {
                      print("On dismiss");
                    },
                  ).show(context);
                },
                child: const Text("Top Right Success"),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  LunaNotifications(
                    title: const Text(
                      "Warning",
                    ),
                    description: const Text("Bottom left notification description"),
                    position: NotificationPosition.bottomLeft,
                    notificationType: NotificationType.warning,
                  ).show(context);
                },
                child: const Text("Bottom Left Warning"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  LunaNotifications(
                    title: const Text(
                      "Message",
                    ),
                    description: const Text("Bottom center notification description"),
                    position: NotificationPosition.bottomCenter,
                    showCloseButton: false,
                  ).show(context);
                },
                child: const Text("Bottom Center Default"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                LunaNotifications(
                  title: const Text(
                    "Error",
                  ),
                  description: const Text("Bottom right notification description"),
                  position: NotificationPosition.bottomRight,
                  notificationType: NotificationType.error,
                ).show(context);
              },
              child: const Text("Bottom Right Error"),
            )
          ],
        ),
      ],
    );
  }
}
