.DEFAULT_GOAL := apk
.PHONY: jni apk run-on-device

jni:
	cargo ndk --target arm64-v8a -o ./java/app/src/main/jniLibs/ build --profile release
	cargo ndk --target x86_64-linux-android -o ./java/app/src/main/jniLibs/ build --profile release

apk: jni
	cd java && ./gradlew build --stacktrace

run-on-device: jni
	cd java && ./gradlew installDebug
	adb shell am start -n local.eframe_template/.MainActivity
	# adb logcat -v color -s eframe_template *:e
	adb logcat -s eframe_template *:e > output.txt


output:
	cd java/app/build/outputs/apk/debug/ && bash