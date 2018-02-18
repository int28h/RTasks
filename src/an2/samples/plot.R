p <- ggplot(d, aes(date, percent, col = system, group = system))+
  geom_line(size = 1.3) +
  geom_point(shape = 21, size = 4, fill = "black") + 
  geom_point(shape = 21, size = 3.5) + 
  geom_point(shape = 21, size = 3) + 
  geom_vline(xintercept = 7.5, color = "white", 
             linetype = "dotted") + 
  scale_y_continuous(breaks = c(0, .04, .08, .11, .15), 
                     limits = c(0, .15), 
                     labels = scales::percent) +  
  scale_color_manual(values = c("orangered1", 
                                "red", 
                                "cyan", 
                                "yellow1",
                                "springgreen2")) +
  xlab("")+
  ylab("")+
  ggtitle("Top 5 Linux distributions (% of total per year)")+
  theme_classic()


p + theme(legend.title = element_blank(), 
          legend.position = "top", 
          plot.background = element_rect(color = "black", 
                                         fill = "black"),
          panel.background = element_rect(color = "black", 
                                          fill = "black"),
          legend.background = element_rect(fill = "black"),
          text = element_text(color = "white"), 
          panel.grid.major.y = element_line(color = "gray50",
                                            linetype = "longdash", 
                                            size = 0.3), 
          axis.text.x = element_text(face = "bold", size = 16), 
          axis.text.y = element_text(face = "bold", size = 14), 
          legend.text = element_text(size = 14), 
          title = element_text(face = "bold", size = 16))

library(grid)

grid.text("Data sourse: The DistroWatch's Page Hit Ranking (Nov. 23, 2011)",
          x = 0.02, y = 0.01, just = c("left", "bottom"), 
          gp = gpar(fontface = "bold", fontsize = 9, col = "white"))

grid.text("www.pingdom.com",
          x = 0.98, y = 0.01, just = c("right", "bottom"), 
          gp = gpar(fontface = "bold", fontsize = 9, col = "white"))