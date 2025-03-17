# How 2 win
- Install [JBR](https://github.com/JetBrains/JetBrainsRuntime/releases) (unzip into `~/.jdks`)
- Open project in [IntelliJ IDEA](https://www.jetbrains.com/idea/download/)
- Run `./init.bat` or `./init.sh` if on Mac/Linux
- Set the project SDK to **jbr** (IntelliJ should auto detect if installed in `~/.jdks`)
- [Sync All Gradle Projects](https://www.jetbrains.com/guide/java/tutorials/working-with-gradle/syncing-and-reloading/)
- Test by running `akootco-suite [build]`
- Add a [Path Variable](https://www.jetbrains.com/help/idea/absolute-path-variables.html) named `PAPER`, point it to a folder that will have sub-folders with mc versions
  - Example: `PATH` = `F:\Repo\Paper`
    - Contains `F:\Repo\Paper\1.21.4\paper.jar`
    - Might contain `F:\Repo\Paper\1.21.1\paper.jar` etc
  - Might (will) need to restart IntelliJ to update
- Run `Test`

# Adding another sub-project
- Add the module name to the include statement in `settings.gradle`