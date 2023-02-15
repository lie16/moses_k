import 'package:artemis/artemis.dart';
import 'package:flutter/material.dart';

import 'config/endpoints.dart';
import 'my_app.dart';

void main() {
  runApp(MyApp(
    client: ArtemisClient(endpointClient),
  ));
}
