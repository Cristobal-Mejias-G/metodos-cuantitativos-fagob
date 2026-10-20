# Métodos Cuantitativos para la Administración Pública 📊
### Facultad de Gobierno, Universidad de Chile

Este repositorio centraliza los recursos, códigos y presentaciones diseñados para las sesiones prácticas de **R** en el curso dictado por el profesor Carlos Budnevich.

**Sitio del curso:** https://cristobal-mejias-g.github.io/metodos-cuantitativos-fagob/

## 🚀 Programa de Sesiones (2026)

| Sesión | Tema principal | Material |
| :--- | :--- | :--- |
| **01** | Introducción a R y RStudio | [Slides](https://cristobal-mejias-g.github.io/metodos-cuantitativos-fagob/clases/01-intro-r/slides.html) |
| **02** | Procesamiento de datos con tidyverse | [Slides](https://cristobal-mejias-g.github.io/metodos-cuantitativos-fagob/clases/02-tidyverse/slides.html) |
| **03** | Análisis descriptivo, bivariado y gráficos | [Slides](https://cristobal-mejias-g.github.io/metodos-cuantitativos-fagob/clases/03-descriptivos-graficos/slides.html) |
| **04** | Documentos dinámicos y Quarto | [Documento](https://cristobal-mejias-g.github.io/metodos-cuantitativos-fagob/clases/04-quarto/documento.html) |
| **05** | Repaso prueba de cátedra 1 | [Slides](https://cristobal-mejias-g.github.io/metodos-cuantitativos-fagob/clases/05-repaso-1/slides.html) |
| **06** | Inferencia, correlación y regresión simple | [Slides](https://cristobal-mejias-g.github.io/metodos-cuantitativos-fagob/clases/06-inferencia-regresion/slides.html) · [Pauta](https://cristobal-mejias-g.github.io/metodos-cuantitativos-fagob/clases/06-inferencia-regresion/pauta.html) |
| **07** | Modelos de regresión múltiple | [Slides](https://cristobal-mejias-g.github.io/metodos-cuantitativos-fagob/clases/07-regresion-multiple/slides.html) |
| **08** | Ejercicios aplicados: regresión simple y múltiple | [Slides](https://cristobal-mejias-g.github.io/metodos-cuantitativos-fagob/clases/08-ejercicios-regresion/slides.html) · [Pauta](https://cristobal-mejias-g.github.io/metodos-cuantitativos-fagob/clases/08-ejercicios-regresion/pauta.html) |
| **09** | Repaso: regresión logística, ACP y cuestionario | [Slides](https://cristobal-mejias-g.github.io/metodos-cuantitativos-fagob/clases/09-repaso-2/slides.html) |

## Estructura

```
_quarto.yml          configuración del sitio
_extensions/fagob/   tema de las presentaciones
_plantilla/clase/    plantilla para una sesión nueva
R/setup.R            opciones comunes a todas las sesiones
datos/               todas las bases de datos
clases/NN-tema/      presentación (slides.qmd) y pauta de cada sesión
guia-estilo.qmd      convenciones de código y presentaciones
```

Para trabajar con el material: abrir `metodos-cuantitativos-fagob.Rproj` en RStudio o Positron. Para regenerar el sitio: `quarto render`.

Los repositorios anteriores de cada sesión (`Clase-N-MC-FAGOB`) quedan como archivo de la versión original.
