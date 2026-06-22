library(tidyverse)
library(ggtree)
library(readxl)
library(dplyr)
library(tidyr)
library(RColorBrewer)
library(ape)
library(ggplot2)
library(phytools)


setwd("/Users/jherpell/MPIPZ/netscratch/dep_psl/grp_hacquard/common/Microbiosis_SynCom_data/Root_bacterial")
#load tree: different methods 
# here you could also load the .treefile from IQTREE (this would allow to import bootstrapping values)
#treeUFbb <- read.iqtree("user/PATH")
#root(treeUFbb, outgroup  = "Leaf41")

tree <- read.newick("./Root_bac_rooted_full16S.nwk")



#most basic tree visualization 
#ggplot(treeUFbb, aes(x, y)) + geom_tree() + theme_tree()
ggplot(tree, aes(x, y)) + geom_tree() + theme_tree()



# annottaing the tree 
#x <- as_tibble(treeUFbb) #convert to tibble
#x2 <- as.phylo(x) # can be converted back, too

x3 <- as_tibble(tree) #convert to tibble
x4 <- as.phylo(x3) # can be converted back, too

metadata <- read_excel("./Microbiosis_Root_SynCom_Bacteria.xlsx")
meta_tibble <- as_tibble(metadata)
meta.tbl.2 <- meta_tibble %>% 
  mutate(label = Label)


#show as df to have rownames
meta.root.df <- as.data.frame(meta.tbl.2)
label <- x4$tip.label
label <- as.data.frame(label)

meta.root.df <- left_join(label, meta.root.df, by = "label")
meta.root.df <- data.frame(meta.root.df, row.names = 2)
summary(meta.root.df)

#set color code for phyla: 
#col_phyla <- c("#cc505a", "#84ba66", "#5d7db9", "#adca5c", "#e19944", "#5f9353")
#c("#cc505a" is Actinobacteria, "#84ba66"Alphaproteobacteria, "#5d7db9"Bacteroidetes, "#adca5c"Bataproteo, "#e19944"Fiirmicutes, "#5f9353"Gammaproteo)

root_tree1 <- ggtree(x4, layout = "circular") %<+% meta.root.df +
  geom_tiplab(aes(label = label), size =2, align = T, linetype = NULL) +
  geom_tippoint(aes(color = Phylum_alternative)) + 
  scale_color_manual(values = c("#cc505a", "#84ba66", "#5d7db9", "#adca5c", "#e19944", "#5f9353"))
root_tree1

root_tree2 <- ggtree(x4, layout = "fan", size=0.15, open.angle=15) %<+% meta.root.df +
  geom_tiplab(aes(label = label), size =1.5, offset = 0.01, align = F, linetype = NULL) +
  geom_tippoint(aes(color = Phylum_alternative)) + 
  scale_color_manual(values = c("#cc505a", "#84ba66", "#5d7db9", "#adca5c", "#e19944", "#5f9353"))
root_tree2

#if you add metadata to your metadata file you can visualize it like this:
'''
gheatmap(root_tree2, meta.root.df[,6:18], offset = 0.25, width = .5, color="black", 
         colnames = TRUE, colnames_position = "top", 
         colnames_angle=80, colnames_offset_y = .1, 
         hjust=0, font.size=2) +
  scale_fill_manual(values=heatmap.colours, breaks=0:9)
'''





