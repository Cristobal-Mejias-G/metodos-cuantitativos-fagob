# Configuración común para todas las sesiones -----------------------------
# Cada presentación lo carga en un chunk oculto. Aquí va solo lo que debe
# ser igual en todas las clases; los paquetes propios de cada sesión se
# cargan a la vista en la presentación, para que los estudiantes los copien.

options(scipen = 999)   # sin notación científica

set.seed(2026)

ggplot2::theme_set(ggplot2::theme_minimal(base_size = 16))

# Ruta a la carpeta de datos compartida del repositorio
ruta_datos <- function(archivo) {
  here::here("datos", archivo)
}
