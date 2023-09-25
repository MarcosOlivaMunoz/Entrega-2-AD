library("tidyverse")
df = mpg
#P1
df %>% ggplot(aes(x = manufacturer)) + geom_bar(fill = "deepskyblue4") + 
  labs(x = "Manufacturador", y = "Número de vehículos") + theme_grey() + 
  theme(axis.text = element_text(size=8), axis.title = element_text(size=15, face="bold"))
#P2
df %>% ggplot(aes(x = class, y = cty)) + geom_boxplot(col = "deepskyblue") + 
  geom_jitter(color = "indianred1", alpha = 0.5) + labs(x = "Clase de vehículo",
                                            y = "Rendimiento en ciudad") + 
  theme_grey() + theme(axis.text = element_text(size=8),
                       axis.title = element_text(size=15, face="bold"))
#P3
df %>% ggplot(aes(x = class, y = cty, fill = drv)) + geom_boxplot() + 
  geom_jitter(aes(color = drv)) + scale_color_hue(l=75) + labs(x = "Clase de vehículo",
                                            y = "Rendimiento en ciudad") + 
  theme_grey() + theme(axis.text = element_text(size=10),
                       axis.title = element_text(size=15, face="bold"),
                       legend.title = element_text(size=15, face="bold")) + 
  scale_fill_discrete(name = "Tracción", breaks = c("4", "f", "r"), labels = c("4 ruedas", "Delantera", "Trasera")) + 
  scale_colour_manual(values=c("#FF2222", "#66FF66", "#22FFFF"), name = "Tracción", breaks = c("4", "f", "r"), labels = c("4 ruedas", "Delantera", "Trasera"))
#P4
df %>% mutate(cyl = as.factor(cyl))
df %>% mutate(cyl = as.factor(cyl)) %>% ggplot(aes(x = class, y = hwy, fill = cyl)) + 
  geom_boxplot() + scale_color_hue(l=50, c=30) + 
  labs(x = "Clase de vehículo", y = "Rendimiento en carretera") + 
  geom_jitter(aes(color = cyl)) + theme_grey() + theme(axis.text = element_text(size=10),
                                                       axis.title = element_text(size=15, face="bold"),
                                                       legend.title = element_text(size=15, face="bold")) + 
  scale_fill_discrete(name = "Cilindrada") + scale_colour_manual(values=c("#FF2222", "#66FF66", "#22FFFF", "#FF22FF"), name = "Cilindrada")
#P5
