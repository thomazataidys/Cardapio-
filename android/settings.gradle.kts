pluginManagement {
    repositories {
        google()
        gradlePluginPortal()
        mavenCentral()
    }

    val flutterSdkPath = run {
        val properties = java.util.Properties()
        file("local.properties").inputStream().use { properties.load(it) }
        val flutterSdkPath = properties.getProperty("flutter.sdk")
        requireNotNull(flutterSdkPath) { "flutter.sdk not set in local.properties" }
        flutterSdkPath
    }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")
}

// ✅ Correto agora — SEM erro de referência
dependencyResolutionManagement {
    repositoriesMode.set(org.gradle.api.initialization.resolve.RepositoriesMode.PREFER_PROJECT)
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.name = "appmaisgostoso"
include("app")
