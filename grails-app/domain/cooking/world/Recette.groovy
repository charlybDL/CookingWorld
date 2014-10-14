package cooking.world

class Recette {

    String titre
    String photo
    String ingredients
    String description
    int tempsPreparation
    int tempsCuisson
    Date dateCreation

    static constraints = {
        titre (nullable : false, blank : false)
        photo (nullable : true)
        ingredients (nullable : false, blank : false)
        description (nullable : false, blank : false)
        tempsCuisson (min : 0)
        tempsPreparation(min : 1)

    }

    @Override
    public String toString() {
        titre + "\n Temps de préparation : "+tempsPreparation+ "\n Temps de cuisson : "+tempsCuisson + "\n Ingrédients :" + ingredients + "\n"+description
    }
}
