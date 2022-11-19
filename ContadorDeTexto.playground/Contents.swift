import Foundation

let example0 = "abacate"
let example1 = "Abacate"
let example2 = "inconstitucionalmente"
let example3 = "Lorem ipsum dolor sit amet"
let examples = [example0,
                example1, example2, example3]

for example in examples {
    print(example)
    print("Tamanho: ", numberOfLetters(example))
    print("Vogais: ", numberOfVowels(example))
    print("Consoantes: ", numberOfConsonants(example))
    print("Quant. palavras: ", numberOfWords(example))
    print("-----------------")
}


func numberOfLetters(_ text: String) -> Int {
    let string = text.replacingOccurrences(of: " ", with: "")
    return string.count
}

func numberOfVowels(_ text: String) -> Int {
    var count = 0
    text.map {
        count += isAVowel($0) ? 1 : 0
    }
    return count
}

func isAVowel(_ letter: Character) -> Bool {
    let character = letter.lowercased()
    return character == "a" || character == "e" || character == "i" || character == "o" || character == "u"
}

func numberOfConsonants(_ text: String) -> Int {
    numberOfLetters(text) - numberOfVowels(text)
}

func numberOfWords(_ text: String) -> Int {
    text.components(separatedBy: " ").count
}
