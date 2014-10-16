package cooking.world

import grails.transaction.Transactional

@Transactional
class InitialisationService {

    boolean transactionnal = true

    def initialiserDonnees() {

        def utilisateurJean = new Utilisateur(pseudo: "Jean",motDePasse: "azerty").save(failOnError : true)
        def utilisateurMarc = new Utilisateur(pseudo: "Marc",motDePasse: "motdepasse").save(failOnError : true)
        def utilisateurPaul = new Utilisateur(pseudo: "Paul",motDePasse: "21/02/1952").save(failOnError : true)
        /*def recetteCookies = new Recette(titre: "Cookies", ingredients: "farine", description: "une description", tempsCuisson: 2, utilisateur: utilisateurJean, tempsPreparation: 3, dateCreation: new Date()).save(failOnError : true)*/
    }
}
