
## LES OPERATIONS DE BASE

a= 15
b= 23
c= 49

## Addition
a+b+c
n <- a+b+c

## Soustraction
a-b-c

## Division

a/b
## Multiplication
a*b*c

## Racine carrée 

sqrt(n)



## STRUCTURE DES DONNEES 

## VECTEURS
age <- c(20,35, 45, 67, 43)

## LIST

identite <- list(Nom="jean", age = 25, profession="Formateur", religion= "catholique")
View(identite)

## DATAFRAME

TEST <- data.frame(formateur= c("joseph", "pierre", "john"), cours= c("Excel", "PowerBI", "Databricks"), pays= c("RDC", "France", "Maroc"))
View(TEST)

## IMPORTATION DE LA BASE DE DONNEES
View(SANTE)

## Dimension de la base de données

dim(SANTE)

## Nom de colonnes
colnames(SANTE)
names(SANTE)

## Afficher les permieres lignes
head(SANTE, 2)

## Afficher les dernieres lignes
tail(SANTE, 10)

## LES INDICATEURS DE TENDANCE CENTRALE 

## La moyenne
mean(SALAIRE$salaire)

## La mediane
median(SALAIRE$salaire)

median(SALAIRE[["salaire"]])

## LES INDICATEUR DE DISPERSION

## Ecart type

sd(SALAIRE$salaire)

## Variance

var(SALAIRE$salaire)


## VISUALISATION

install.packages("ggplot2")   
library("ggplot2")


ggplot(data=SALAIRE, mapping = aes(x = sexe)) + geom_density(fill="darkblue") + xlab("deuxieme") + ylab("sexe") + ggtitle("Repartition selon le sexe") 


## STATISTIQUE DESCRIPTIVE BIVARIEES

croise <- table(SALAIRE$sexe, SALAIRE$emploi) 
View(croise)

croise <- table(SALAIRE[["sexe"]], SALAIRE[["emploi"]])
View(croise)
