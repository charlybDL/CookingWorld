package cooking.world

import grails.transaction.Transactional

@Transactional
class InitialisationService {

    boolean transactionnal = true

    def initialiserDonnees() {

        def utilisateurJean = new Utilisateur(pseudo: "Jean",motDePasse: "azerty").save(failOnError : true)
        def utilisateurMarc = new Utilisateur(pseudo: "Marc",motDePasse: "motdepasse").save(failOnError : true)
        def utilisateurPaul = new Utilisateur(pseudo: "Paul",motDePasse: "21/02/1952").save(failOnError : true)
    }
}
