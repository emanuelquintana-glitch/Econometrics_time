# =============================================================================
# setup.R - Configuración inicial del proyecto Econometrics Time Series
# =============================================================================
# Autor: Emanuel Quintana Silva
# Fecha: 2025-01-07
# Descripción: Script de configuración que verifica e instala todas las
#              dependencias necesarias para el proyecto
# =============================================================================

cat("\n")
cat("═══════════════════════════════════════════════════════════════════\n")
cat("  📊 Econometrics Time Series - Configuración del Proyecto\n")
cat("═══════════════════════════════════════════════════════════════════\n\n")

# -----------------------------------------------------------------------------
# 1. VERIFICAR VERSIÓN DE R
# -----------------------------------------------------------------------------

cat("🔍 Verificando versión de R...\n")
r_version <- getRversion()
cat(sprintf("   ✓ R versión: %s\n", r_version))

if (r_version < "4.0.0") {
  stop("❌ Se requiere R >= 4.0.0. Por favor actualice R.")
}

# -----------------------------------------------------------------------------
# 2. CONFIGURAR REPOSITORIO CRAN
# -----------------------------------------------------------------------------

cat("\n📦 Configurando repositorio CRAN...\n")
options(repos = c(CRAN = "https://cloud.r-project.org/"))
cat("   ✓ CRAN: https://cloud.r-project.org/\n")

# -----------------------------------------------------------------------------
# 3. FUNCIÓN PARA INSTALAR PAQUETES SI NO EXISTEN
# -----------------------------------------------------------------------------

install_if_missing <- function(pkg) {
  if (!require(pkg, character.only = TRUE, quietly = TRUE)) {
    cat(sprintf("   📥 Instalando: %s\n", pkg))
    install.packages(pkg, dependencies = TRUE, quiet = TRUE)
    library(pkg, character.only = TRUE)
    cat(sprintf("   ✓ Instalado: %s\n", pkg))
  } else {
    cat(sprintf("   ✓ Ya instalado: %s\n", pkg))
  }
}

# -----------------------------------------------------------------------------
# 4. PAQUETES CRÍTICOS PARA QUARTO
# -----------------------------------------------------------------------------

cat("\n🔧 Instalando paquetes críticos para Quarto...\n")

critical_packages <- c(
  "rmarkdown",    # Motor de renderizado
  "knitr",        # Procesamiento de chunks
  "yaml",         # Parseo de YAML
  "xfun",         # Funciones auxiliares
  "tinytex",      # LaTeX (opcional)
  "htmltools"     # Generación de HTML
)

for (pkg in critical_packages) {
  install_if_missing(pkg)
}

# -----------------------------------------------------------------------------
# 5. PAQUETES DE VISUALIZACIÓN Y MANIPULACIÓN DE DATOS
# -----------------------------------------------------------------------------

cat("\n📊 Instalando paquetes de visualización y datos...\n")

data_viz_packages <- c(
  "tidyverse",    # Ecosistema completo
  "ggplot2",      # Gráficos
  "dplyr",        # Manipulación de datos
  "tidyr",        # Limpieza de datos
  "readr",        # Lectura de datos
  "purrr",        # Programación funcional
  "tibble",       # Data frames modernos
  "stringr",      # Manipulación de strings
  "forcats",      # Manejo de factores
  "lubridate",    # Fechas y tiempo
  "scales",       # Escalas y formatos
  "patchwork",    # Composición de gráficos
  "ggforce"       # Extensiones de ggplot2
)

for (pkg in data_viz_packages) {
  install_if_missing(pkg)
}

# -----------------------------------------------------------------------------
# 6. PAQUETES DE TABLAS Y FORMATO
# -----------------------------------------------------------------------------

cat("\n📋 Instalando paquetes de tablas...\n")

table_packages <- c(
  "kableExtra",   # Tablas HTML/LaTeX
  "gt",           # Grammar of Tables
  "DT",           # Tablas interactivas
  "reactable"     # Tablas React
)

for (pkg in table_packages) {
  install_if_missing(pkg)
}

# -----------------------------------------------------------------------------
# 7. PAQUETES DE ECONOMETRÍA
# -----------------------------------------------------------------------------

cat("\n📈 Instalando paquetes de econometría...\n")

econometrics_packages <- c(
  "AER",          # Applied Econometrics with R
  "plm",          # Panel Linear Models
  "lmtest",       # Testing Linear Models
  "sandwich",     # Robust Standard Errors
  "car",          # Companion to Applied Regression
  "forecast",     # Forecasting
  "tseries",      # Time Series Analysis
  "zoo",          # Time Series Objects
  "xts",          # eXtensible Time Series
  "dynlm",        # Dynamic Linear Models
  "vars",         # Vector Autoregression
  "urca",         # Unit Root and Cointegration
  "quantreg",     # Quantile Regression
  "systemfit",    # Simultaneous Equations
  "ivpack"        # Instrumental Variables
)

for (pkg in econometrics_packages) {
  install_if_missing(pkg)
}

# -----------------------------------------------------------------------------
# 8. PAQUETES ADICIONALES ÚTILES
# -----------------------------------------------------------------------------

cat("\n🛠️  Instalando paquetes adicionales...\n")

additional_packages <- c(
  "here",         # Rutas de proyecto
  "janitor",      # Limpieza de datos
  "skimr",        # Resúmenes de datos
  "broom",        # Tidy model outputs
  "glue",         # Concatenación de strings
  "fs",           # File system operations
  "cli",          # Command line interface
  "crayon"        # Colored terminal output
)

for (pkg in additional_packages) {
  install_if_missing(pkg)
}

# -----------------------------------------------------------------------------
# 9. VERIFICAR INSTALACIÓN DE QUARTO
# -----------------------------------------------------------------------------

cat("\n🔍 Verificando instalación de Quarto...\n")

quarto_path <- Sys.which("quarto")
if (quarto_path != "") {
  cat(sprintf("   ✓ Quarto encontrado en: %s\n", quarto_path))

  # Obtener versión de Quarto
  tryCatch({
    quarto_version <- system("quarto --version", intern = TRUE)
    cat(sprintf("   ✓ Versión de Quarto: %s\n", quarto_version))
  }, error = function(e) {
    cat("   ⚠️  No se pudo determinar la versión de Quarto\n")
  })
} else {
  cat("   ❌ Quarto no encontrado en PATH\n")
  cat("   📝 Instale Quarto desde: https://quarto.org/docs/get-started/\n")
}

# -----------------------------------------------------------------------------
# 10. CREAR ESTRUCTURA DE DIRECTORIOS
# -----------------------------------------------------------------------------

cat("\n📁 Verificando estructura de directorios...\n")

directories <- c(
  "data/raw",
  "data/processed",
  "data/external",
  "figures",
  "tables",
  "R/functions",
  "R/classes",
  "R/modules",
  "notebooks/exploratory",
  "notebooks/analysis",
  "notebooks/reports"
)

for (dir in directories) {
  if (!dir.exists(dir)) {
    dir.create(dir, recursive = TRUE)
    cat(sprintf("   ✓ Creado: %s\n", dir))
  } else {
    cat(sprintf("   ✓ Existe: %s\n", dir))
  }
}

# -----------------------------------------------------------------------------
# 11. CONFIGURAR OPCIONES GLOBALES DE R
# -----------------------------------------------------------------------------

cat("\n⚙️  Configurando opciones globales de R...\n")

options(
  # Opciones de Quarto/knitr
  knitr.duplicate.label = "allow",
  knitr.table.format = "html",

  # Opciones de visualización
  scipen = 999,              # Evitar notación científica
  digits = 4,                # Dígitos decimales
  width = 80,                # Ancho de consola

  # Opciones de advertencias
  warn = 1,                  # Mostrar warnings inmediatamente

  # Opciones de encoding
  encoding = "UTF-8"
)

cat("   ✓ Opciones configuradas\n")

# -----------------------------------------------------------------------------
# 12. CREAR ARCHIVO .Rprofile (OPCIONAL)
# -----------------------------------------------------------------------------

cat("\n📝 Configurando .Rprofile...\n")

rprofile_content <- '# .Rprofile para Econometrics Time Series Project

# Mensaje de bienvenida
.First <- function() {
  cat("\\n")
  cat("═══════════════════════════════════════════════════════════════════\\n")
  cat("  📊 Econometrics Time Series Project\\n")
  cat("═══════════════════════════════════════════════════════════════════\\n")
  cat("  Working directory:", getwd(), "\\n")
  cat("  R version:", R.version.string, "\\n")
  cat("═══════════════════════════════════════════════════════════════════\\n\\n")
}

# Opciones por defecto
options(
  repos = c(CRAN = "https://cloud.r-project.org/"),
  scipen = 999,
  digits = 4,
  width = 80
)

# Cargar paquetes comunes automáticamente (opcional)
# suppressMessages(library(tidyverse))
'

if (!file.exists(".Rprofile")) {
  writeLines(rprofile_content, ".Rprofile")
  cat("   ✓ Archivo .Rprofile creado\n")
} else {
  cat("   ℹ️  .Rprofile ya existe (no modificado)\n")
}

# -----------------------------------------------------------------------------
# 13. RESUMEN FINAL
# -----------------------------------------------------------------------------

cat("\n")
cat("═══════════════════════════════════════════════════════════════════\n")
cat("  ✅ CONFIGURACIÓN COMPLETADA EXITOSAMENTE\n")
cat("═══════════════════════════════════════════════════════════════════\n\n")

cat("📋 Resumen de configuración:\n")
cat(sprintf("   • R versión: %s\n", r_version))
cat(sprintf("   • Paquetes críticos: %d instalados\n", length(critical_packages)))
cat(sprintf("   • Paquetes de datos/viz: %d instalados\n", length(data_viz_packages)))
cat(sprintf("   • Paquetes de econometría: %d instalados\n", length(econometrics_packages)))
cat(sprintf("   • Directorios creados/verificados: %d\n", length(directories)))

cat("\n🚀 Próximos pasos:\n")
cat("   1. Ejecute 'quarto preview' para ver el proyecto\n")
cat("   2. Abra cualquier archivo .qmd en RStudio\n")
cat("   3. Use 'quarto render' para compilar todo el libro\n")

cat("\n📚 Documentación:\n")
cat("   • Quarto: https://quarto.org/docs/\n")
cat("   • R for Data Science: https://r4ds.had.co.nz/\n")
cat("   • Proyecto GitHub: https://github.com/emanuelquintana-glitch/Econometrics_time\n")

cat("\n═══════════════════════════════════════════════════════════════════\n\n")

# -----------------------------------------------------------------------------
# 14. GUARDAR INFORMACIÓN DE SESIÓN
# -----------------------------------------------------------------------------

sink("session_info.txt")
cat("═══════════════════════════════════════════════════════════════════\n")
cat("  Session Info - Econometrics Time Series Project\n")
cat("═══════════════════════════════════════════════════════════════════\n\n")
print(sessionInfo())
sink()

cat("💾 Información de sesión guardada en: session_info.txt\n\n")
