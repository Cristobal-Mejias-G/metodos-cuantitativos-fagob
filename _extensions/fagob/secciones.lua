-- Toda diapositiva de sección (encabezado de nivel 1) recibe el fondo
-- institucional, salvo que el encabezado ya defina su propio fondo.
-- Así se escribe `# Parte 1` en vez de `# Parte 1 {background-color="#40666e"}`.

local fondo_seccion = "#40666e"

function Header(el)
  if el.level == 1 and el.attributes["background-color"] == nil then
    el.attributes["background-color"] = fondo_seccion
    el.classes:insert("seccion")
  end
  return el
end
