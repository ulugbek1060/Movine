// fix_plugins.gradle.kts
import com.android.build.gradle.LibraryExtension

allprojects {
    afterEvaluate {
        if (plugins.hasPlugin("com.android.library")) {
            val android = extensions.getByType<LibraryExtension>()
            if (android.namespace == null) {
                android.namespace = "com.pichillilorenzo.flutter_inappwebview"
            }
        }
    }
}