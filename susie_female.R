##########################################################################
# Fine-mapping avec SuSiE (Female)
##########################################################################

library(data.table)
library(susieR)

# =========================
# 1. Charger les donnes GWAS
# =========================

gwas <- fread("C:/Users/lenovo/Downloads/gene/female.txt")

setnames(gwas,
         old = c("CHR","POS","SNP","BETA","SE","P"),
         new = c("CHR","POS","SNP","BETA","SE","P"))

gwas$CHR  <- as.character(gwas$CHR)
gwas$POS  <- as.numeric(gwas$POS)
gwas$BETA <- as.numeric(gwas$BETA)
gwas$SE   <- as.numeric(gwas$SE)
gwas$P    <- as.numeric(gwas$P)

# =========================
# 2. Definir la region du gene
# =========================

chr <- "10"

gene_start <- 102830461
gene_end   <- 102837501

window <- 500000

start <- gene_start - window
end   <- gene_end + window

region <- subset(gwas,
                 CHR == chr &
                   POS >= start &
                   POS <= end)

region <- region[!is.na(SNP), ]

cat("Nombre de SNPs dans la region :", nrow(region), "\n")

# =========================
# 3. Nettoyer les noms des SNPs
# =========================

region$SNP_clean <- sub(":.*", "", region$SNP)

# =========================
# 4. Charger la matrice LD
# =========================

ld <- fread("C:/Users/lenovo/Downloads/matrix_ld/r2_10540.txt")

ld_mat <- as.data.frame(ld)

rownames(ld_mat) <- ld_mat$RS_number
ld_mat$RS_number <- NULL

R <- as.matrix(ld_mat)

# =========================
# 5. SNPs communs
# =========================

common_snps <- intersect(region$SNP_clean, rownames(R))

cat("Nombre de SNPs communs :", length(common_snps), "\n")

# =========================
# 6. Aligner les donnes
# =========================

region_filt <- region[match(common_snps, region$SNP_clean), ]

R2 <- R[common_snps, common_snps]

# =========================
# 7. Calcul des Z-scores
# =========================

z <- region_filt$BETA / region_filt$SE

cat("Dimension de la matrice LD :", dim(R2), "\n")
cat("Nombre de Z-scores :", length(z), "\n")

stopifnot(length(z) == nrow(R2))

# =========================
# 8. Fine-mapping SuSiE
# =========================

fit <- susie_rss(
  z = z,
  R = R2,
  n = 50000,
  estimate_residual_variance = FALSE
)

# =========================
# 9. Resultats
# =========================

pip_table <- data.frame(
  SNP = common_snps,
  PIP = fit$pip
)

pip_table <- pip_table[order(-pip_table$PIP), ]

print("Top 20 SNPs :")
print(head(pip_table, 20))



# =========================
# 10. Sauvegarder les resultats
# =========================

write.csv(pip_table,
          "Female_SuSiE_PIP_results.csv",
          row.names = FALSE)

# =========================
# 11. Graphique
# =========================

top_n <- min(20, nrow(pip_table))

barplot(
  pip_table$PIP[1:top_n],
  names.arg = pip_table$SNP[1:top_n],
  las = 2,
  col = "lightblue",
  main = "Top SNPs (Female) - SuSiE Fine Mapping",
  ylab = "Posterior Inclusion Probability (PIP)"
)