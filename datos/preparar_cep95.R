# Preparación de la base CEP N° 95 (octubre 2025) para la ayudantía 07 -------
# Lee la base original (cep95.sav), selecciona y renombra las variables del
# caso aplicado y guarda cep95.rds. Los -8 y -9 se tratan en la presentación.

pacman::p_load(haven, dplyr, sjlabelled, here)

cep <- read_sav(here("datos", "cep95.sav")) |>
  select(
    esc_delincuencia    = democracia_38,
    esc_responsabilidad = pobreza_63,
    esc_ingreso_merito  = pobreza_62,
    pos_pol             = iden_pol_2,
    sexo,
    educacion           = esc_nivel_1_c,
    democracia          = democracia_21,
    lider_autoritario   = democracia_37_c,
    aborto              = religion_14,
    eutanasia           = religion_64,
    confianza_justicia  = confianza_6_d,
    confianza_congreso  = confianza_6_k,
    confianza_gobierno  = confianza_6_i
  ) |>
  var_labels(
    esc_delincuencia    = "Preferencia: Garantizar libertades vs. Suprimir libertades para controlar delincuencia",
    esc_responsabilidad = "Preferencia: Estado vs. Individuos como responsables del sustento económico",
    esc_ingreso_merito  = "Preferencia: Igualdad de ingresos vs. Premiar el esfuerzo individual",
    pos_pol             = "Posición política",
    sexo                = "Sexo",
    educacion           = "Nivel de educación",
    democracia          = "Preferencia de régimen político: Democracia vs. Autoritarismo vs. Indiferencia",
    lider_autoritario   = "Apoyo o rechazo a líder fuerte sin congreso ni elecciones",
    aborto              = "Preferencia sobre el aborto",
    eutanasia           = "Preferencia sobre la eutanasia",
    confianza_justicia  = "Confianza en Tribunales de justicia",
    confianza_congreso  = "Confianza en el Congreso",
    confianza_gobierno  = "Confianza en el Gobierno"
  )

saveRDS(cep, here("datos", "cep95.rds"))

# Codificación de las variables:
# - Escalas dependientes (esc_*): 1 a 10. esc_delincuencia: 1 = garantizar
#   libertades, 10 = suprimir libertades. esc_responsabilidad: 1 = Estado,
#   10 = las personas. esc_ingreso_merito: 1 = ingresos más iguales,
#   10 = premiar el esfuerzo individual.
# - pos_pol: 1 = izquierda, 10 = derecha.
# - democracia: 1 = la democracia es preferible, 2 = a veces un gobierno
#   autoritario es preferible, 3 = da lo mismo.
# - lider_autoritario: 1 a 4 (1-2 = apoyo, 3-4 = rechazo).
# - aborto: 1 = siempre prohibido, 2 = casos especiales, 3 = opción libre.
# - eutanasia: 1 = siempre permitida, 2 = casos especiales, 3 = nunca permitida.
# - confianza_*: 1 = mucha, 2 = bastante, 3 = poca, 4 = nada.
# - En todas: -8 = no sabe, -9 = no responde.
