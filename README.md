# url_launch_freeze

Minimal example project to demonstrate url_launch freeze. [Find a Video showing the behavior here](./url_launch_freeze.mp4).

The freeze seems only to happen when having gesture navigation enabled and doing a swipe between for instance the opened facebook app and the example app. When opening the app switcher fully and then switching back by tapping the example app, it doesn't show up it seems.

## flutter doctor

```
$ flutter doctor -v
[✓] Flutter (Channel stable, 2.5.3, on Arch Linux 5.15.2-arch1-1, locale de_DE.UTF-8)
    • Flutter version 2.5.3 at /home/marcel/devtools/flutter
    • Upstream repository https://github.com/flutter/flutter.git
    • Framework revision 18116933e7 (vor 5 Wochen), 2021-10-15 10:46:35 -0700
    • Engine revision d3ea636dc5
    • Dart version 2.14.4

[✓] Android toolchain - develop for Android devices (Android SDK version 31.0.0)
    • Android SDK at /home/marcel/Android/Sdk
    • Platform android-31, build-tools 31.0.0
    • Java binary at: /opt/android-studio/jre/bin/java
    • Java version OpenJDK Runtime Environment (build 11.0.10+0-b96-7249189)
    • All Android licenses accepted.

[✗] Chrome - develop for the web (Cannot find Chrome executable at google-chrome)
    ! Cannot find Chrome. Try setting CHROME_EXECUTABLE to a Chrome executable.

[✓] Android Studio (version 2020.3)
    • Android Studio at /opt/android-studio
    • Flutter plugin version 62.0.1
    • Dart plugin version 203.8452
    • Java version OpenJDK Runtime Environment (build 11.0.10+0-b96-7249189)

[✓] Connected device (1 available)
    • Pixel 3a (mobile) • 94WAY0TGTW • android-arm64 • Android 12 (API 31)

! Doctor found issues in 1 category.
```
