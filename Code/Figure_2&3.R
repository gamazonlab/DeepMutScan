#---
#title: "Figure_2&3"
#code author: "Bo Wang, Ph.D."
#---


## Figure_2&3 
library(tidyr)
library(ggplot2)
library(cowplot)
library(ggcorrplot)

### Read-in
Binding <- read.csv("../Results/NN_Derived_Phenotypic_Scores/RBD_nn_score_Binding.csv")
Experssion <- read.csv("../Results/NN_Derived_Phenotypic_Scores/RBD_nn_score_Expression.csv")
df_raw <- read.csv("../Data/Source_Data/Spike_RBD.csv")
correlation <- df_raw[,c("bind_avg", "expr_avg")] %>% drop_na()

### Figure 2
model_list <- c("score", "cnn", "lr", "fcn", "cnn", "gcn")
labels_list <- c("Binding affinity", "CNN", "LR", "MLP", "CNN", "GCN")
p <- list()
for (s in 1:3) {
  p[[s]] <- ggplot(data=Binding[Binding$set_name=="test",], aes_string(model_list[s])) +
              stat_density(color="black", fill="darkgreen", adjust = 1) +
              ylim(0,1) +
              xlab(labels_list[s])
}

for (s in 4:6) {
  p[[s]] <- ggplot(data=Binding[Binding$set_name=="test",], aes_string(x="score",model_list[s])) +
              geom_point(colour="darkgreen") + 
              geom_abline(color="red") +
              xlim(-6,1) +
              ylim(-6,1) +
              xlab("Binding affinity") +
              ylab(labels_list[s])
}
plot_grid(plotlist = p, ncol = 3)


### Figure 3A
ggplot(correlation, aes(x=bind_avg,y=expr_avg)) +
  geom_point(colour="darkgreen") + 
  geom_smooth(method = loess) +
  xlab("Binding affinity") +
  ylab("Expression")

### Figure 3B-D
model_list2 <- c("fcn", "cnn", "gcn")
labels_list2 <- c("MLP", "CNN", "GCN")
p <- list()
for (s in 1:3) {
  p[[s]] <- ggplot(data=Experssion[Experssion$set_name=="test",], aes_string(x="score",model_list2[s])) +
              geom_point(colour="darkgreen") + 
              geom_abline(color="red") +
              xlim(-5,1) +
              ylim(-4,1) +
              xlab("Expression") +
              ylab(labels_list2[s])
}
plot_grid(plotlist = p, nrow = 3)

### Figure 3E 
p <- ggcorrplot(cor(Binding[,c("cnn", "gcn", "fcn","score")]))
p + scale_fill_gradient2(limit = c(0.75,1), midpoint = 0.875)









