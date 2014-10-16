package cooking.world

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Notes)
class NotesSpec extends Specification {

    Notes notes
    def setup() {
        notes = new Notes()
    }

    def cleanup() {
    }

    void "test sur les contraintes d'une note valide"() {
        given: "une note"
        notes.noteClarete = uneNoteClarete
        notes.noteGout = uneNoteGout
        notes.noteDifficulte = uneNoteDifficulte

        when: "la note est validée"
        def valid = notes.validate()

        then: "les vérifications de contraintes sont appliquées correctement"
        valid == etatAttendu

        where:
        uneNoteClarete | uneNoteGout | uneNoteDifficulte | etatAttendu
       -1 | 3 | 3 | false
        6 | 3 | 3 |  false
        3 | -1 | 3 |  false
        3 | 6 | 3 |   false
        3 | 3 | -1 |  false
       3 | 3 | 6 | false
        3 | 3 | 3 |   true

    }
}
