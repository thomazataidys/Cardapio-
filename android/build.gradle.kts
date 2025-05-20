val customBuildDir = file("${rootProject.projectDir}/../build")

tasks.register<Delete>("clean") {
    delete(customBuildDir)
}

// Opcional: Configurar todos os projetos para usar este diretório
allprojects {
    layout.buildDirectory.set(file("${rootProject.projectDir}/../build/${project.name}"))
}