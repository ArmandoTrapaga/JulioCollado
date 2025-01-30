# Creamos el proyecto en la direccion del servidor
usethis::create_project("/home/aggonzal/JulioCollado")

# Creamos la primeras notas
usethis::use_r("Notas1.R")
usethis::use_r("Notas_mt-cars.R")

# Obtenemos el token para github y lo añadimos al environ
usethis::create_github_token()
usethis::edit_r_environ()

# Configuramos la configuracion de github para poder inicializar un github
usethis::edit_git_config()
usethis::use_git()

# Conectamos el repositorio local y el de github
usethis::use_github()
