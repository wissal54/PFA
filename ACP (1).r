#############################téléchargement-des-données#############################
data=read.csv(file=file.choose(),sep=",",header=TRUE,row.names=1)
attach(data)
View(data)

str(data)
summary(data)

# verifier l'exixtence des donn?es manquantes
na.fail(data)


####################################################################################
#pca:aAnalyse en Composantes Principales (ACP)
library(FactoMineR)
res=PCA(data)
res

#
res$eig

#valeurs propres
barplot(res$eig[,1],main="valeurs propres")
#graphe un peu encombré
dimdesc(res)

####################################################################################
library(FactoInvestigate)
library(ggplot2)
library(shiny)
library(htmltools)


library(Factoshiny)

Factoshiny(data)

####################################################################################
# installing/loading the package:
if(!require(installr)) { install.packages("installr"); require(installr)} #load / install+load installr

# Installing pandoc
install.pandoc()
