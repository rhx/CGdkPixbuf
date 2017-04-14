# CGdkPixbuf
A wrapper around gdk-pixbuf-2.x for Swift

## Troubleshooting
Here are some common errors you might encounter and how to fix them.

### Old Swift toolchain or Xcode
If you get an error such as

	$ ./build.sh
	error: unable to invoke subcommand: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift-package (No such file or directory)

this probably means that your Swift toolchain is too old.  Make sure the latest toolchain (Swift 3.1 at the time of this writing) is the one that is found when you run the Swift compiler, e.g.:

	$ swift --version
	Apple Swift version 3.1 (swiftlang-802.0.51 clang-802.0.41)
	Target: x86_64-apple-macosx10.9

on macOS, or on Linux you should get something like:

	$ swift --version
	Swift version 3.1 (swift-3.1-RELEASE)
	Target: x86_64-unknown-linux-gnu

  If you get an older version, make sure that the right version of the swift compiler is found first in your `PATH`.  On macOS, use xcode-select to select and install the latest version, e.g.:

	sudo xcode-select -s /Applications/Devel/Xcode-beta.app
	xcode-select --install
