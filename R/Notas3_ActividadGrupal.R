#La descripcion del paquete que elegi es:
#Paquete elegido: spatialSimGP
#url: https://bioconductor.org/packages/release/bioc/html/spatialSimGP.html
#Description: This packages simulates spatial transcriptomics data with the 
#mean- variance relationship using a Gaussian Process model per gene.
#Autores: Kinnary Shah [aut, cre] , Boyi Guo [aut] , Stephanie C. Hicks [aut]
#Todas las plataformas: Si
#Evidencia de soporte: No 
#Dependencias: 74
#Documentacion: https://bioconductor.org/packages/release/bioc/vignettes/spatialSimGP/inst/doc/spatialSimGP.html
#Github: https://github.com/kinnaryshah/spatialSimGP
#Discusion:
# Aunque si bien no existe evidencia sobre tener un soporte constante, el git esta bien documentado,
#para su instalacion. En cuanto a su uso, el manual da ejemplos simples para el uso de su paquete, sin
#comentarios pero al ser codigo simple se puede presindir de ello. 
#El paquete se instala de la siguente manera
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("spatialSimGP")

options(width = 120)
sessioninfo::session_info()