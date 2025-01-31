## Load recount3 R package
library("recount3")
## Revisemos todos los proyectos con datos de humano en recount3
human_projects <- available_projects()
## Encuentra tu proyecto de interés. Aquí usaremos
## SRP009615 de ejemplo
proj_info <- subset(
  human_projects,
  project == "SRP009615" & project_type == "data_sources"
)
## Crea un objeto de tipo RangedSummarizedExperiment (RSE)
## con la información a nivel de genes
rse_gene_SRP009615 <- create_rse(proj_info)
## Explora el objeto RSE
rse_gene_SRP009615

metadata(rse_gene_SRP009615)

#Regresa la informacion completa del objeto 
rowRanges(rse_gene_SRP009615)

# rowData nos regresa secciones particulares de la informacion
sort(table(rowData(rse_gene_SRP009615)$gene_type), decresing=TRUE)sort(table(rowData(rse_gene_SRP009615)$gene_type), decresing=TRUE)

rse_gene_SRP009615 <- expand_sra_attributes(rse_gene_SRP009615)

colData(rse_gene_SRP009615)[
  ,
  grepl("^sra_attribute", colnames(colData(rse_gene_SRP009615)))
]

iSEE::iSEE(rse_gene_SRP009615)