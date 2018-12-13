// swift-tools-version:4.0

import PackageDescription 

let package = Package(name: "CGdkPixbuf",
	pkgConfig: "gdk-pixbuf-2.0 gio-unix-2.0 glib-2.0",
	providers: [
		.brew(["gdk-pixbuf", "glib", "glib-networking", "gobject-introspection"]),
		.apt(["libgdk-pixbuf2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
	]
)
