getwd() #para saber donde se guardan los archivos
install.packages("plotly")     #Instalo el paquete plotly
library ("tidyverse","plotly")       #LLamo al paquete plotly
install.packages("ggplotly")     ##Instalo el paquete ggplot2
library ("ggplot2")                #LLamo al paquete ggplot2

#se puede guardar ahi el archivo propinas
propina<-read.csv('E:/propina.csv')   #leo mi set de datos

#mi primer grafico con ggplot2
ggplot(data = propina, aes(x= total, y= propina)) + geom_point() + theme(aspect.ratio=1)

ggplot(data = propina, aes(x= total, y= propina, colour= sexo )) + geom_point() + theme(aspect.ratio=1)

                                                                             
ggplot(data = propina, aes(x= total, y= propina, colour= sexo )) + geom_point(colour="blue") + theme(aspect.ratio=1) 

ggplot(data = propina, aes(x= total, y= propina, shape= sexo )) + geom_point() + theme(aspect.ratio=1)


ggplot(data = propina, aes(x= total, y= propina)) + geom_point(size=5, alpha=1/3) + theme(aspect.ratio=1)

ggplot(data = propina, aes(x= total, y= propina, colour= fuma )) + geom_point() + theme(aspect.ratio=1) 

ggplot() + layer(data = propina, mapping =aes(x= total, y= propina), geom = "point", stat="identity", position= "identity")

ggplot(data = propina, aes(x= total, y= propina, colour= fuma )) + geom_point() + theme(aspect.ratio=1) + facet_grid (sexo~fuma)  


ggplot(data = propina, aes(x = total, y = propina, color = sexo)) +
  geom_point() +  theme(aspect.ratio = 1) +
  labs(x = "Total de la cuenta", y = "Propina", color = "Sexo")

pl <- ggplot(propina, aes(total, propina, colour = sexo)) +
  geom_point() 
ggplotly(pl)


library(plotly)  #grafico interactivo
pl <- ggplot(propina, aes(total, propina, colour = sexo,
                           text = paste('Sexo', sexo))) +
  geom_point() 
ggplotly(pl, tooltip = "text")