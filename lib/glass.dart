import 'package:flutter/material.dart';
import 'package:luna_notifications/luna_notifications.dart';

class GlassNotifications extends StatelessWidget {
  const GlassNotifications({super.key});

  void showAlertDialog(BuildContext context, String title, String message) {
    showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Glass notifications", style: Theme.of(context).textTheme.headlineMedium)]),
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
                    backgroundColor: Colors.blue.withOpacity(0.6),
                  ),
                  onPressed: () {
                    LunaNotificationsGlass(
                      title: const Text(
                        "Info",
                      ),
                      description: const Text("Top left notification description"),
                      position: NotificationPosition.topLeft,
                      notificationType: NotificationType.info,
                      showCloseButton: false,
                    ).show(context);
                  },
                  child: const Text("Top Left Info"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.6),
                  ),
                  onPressed: () {
                    LunaNotificationsGlass(
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
                  backgroundColor: Colors.green.withOpacity(0.6),
                ),
                onPressed: () {
                  LunaNotificationsGlass(
                    title: const Text(
                      "Success",
                    ),
                    description: const Text("Top right notification description"),
                    position: NotificationPosition.topRight,
                    actionIcon: const Icon(Icons.timer, color: Colors.white),
                    notificationType: NotificationType.success,
                    onActionPressed: () {
                      showAlertDialog(context, 'Action button pressed', 'You clicked on the action icon');
                    },
                    onCloseButtonPressed: () {
                      showAlertDialog(context, 'Close button pressed', 'You clicked on the close button');
                    },
                    onDismiss: () {
                      showAlertDialog(context, 'Dismiss', 'Notification dismiss');
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
                  backgroundColor: Colors.orange.withOpacity(0.6),
                ),
                onPressed: () {
                  LunaNotificationsGlass(
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
                  backgroundColor: Colors.black.withOpacity(0.6),
                ),
                onPressed: () {
                  LunaNotificationsGlass(
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
                backgroundColor: Colors.red.withOpacity(0.6),
              ),
              onPressed: () {
                LunaNotificationsGlass(
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
