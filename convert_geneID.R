library("org.Hs.eg.db")
keytypes(org.Hs.eg.db)
genesymbol <- DE_gene$V1
cols <- c("ENTREZID", "SYMBOL")
name <- select(org.Hs.eg.db, genesymbol, cols, "SYMBOL")
cols <- c("UNIPROT", "SYMBOL")
name <- select(org.Hs.eg.db,genesymbol, cols, "SYMBOL")
write.csv(name,
          "temp1_ENTREZID.csv")