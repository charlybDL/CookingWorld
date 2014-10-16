package cooking.world

class Notes {
    int noteClarete
    int noteGout
    int noteDifficulte


    static constraints = {
        noteClarete (min : 0, max : 5)
        noteGout (min : 0, max : 5)
        noteDifficulte (min : 0, max : 5)
    }
}
