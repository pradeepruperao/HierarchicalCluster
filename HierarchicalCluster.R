# Read the input data
data <- read.table("BlinesRainyGCA.txt", header = TRUE, row.names = 1)

# Convert to matrix (required for dist and hclust)
data_matrix <- as.matrix(data)

# Compute distance matrix (Euclidean distance)
dist_matrix <- dist(data_matrix)

# Perform hierarchical clustering (complete linkage by default)
hc <- hclust(dist_matrix)

# Save dendrogram to a wide PDF file (e.g., 12 inches wide, 6 inches high)
pdf("hierarchical_clustering_dendrogram.pdf", width = 18, height = 8)
plot(hc, main = "Hierarchical Clustering Dendrogram", 
     xlab = "", sub = "", 
     hang = -1, cex = 1)
dev.off()
