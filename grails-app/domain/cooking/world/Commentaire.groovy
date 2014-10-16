package cooking.world

class Commentaire {

    String message
    static belongsTo = Recette
    static hasOne = [recette : Recette, utilisateur : Utilisateur]

    static constraints = {
        message (nullable : false, blank : false)
    }

    @Override
    public String toString() {
        message
    }
}
