import Foundation

// let vowels: [Character] = ["a", "e", "i", "o", "u"]

let example1 = "teste"
let example2 = "inconstitucionalmente"
let example3 = "Lorem ipsum dolor sit amet"
let examples = [example1, example2, example3]

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

//func numberOfVowels(_ text: String) -> Int {
//    var count = 0
//    for vowel in vowels {
//        for letter in text {
//            if vowel == letter {
//                count += 1
//            }
//        }
//    }
//    return count
//}

func numberOfVowels(_ text: String) -> Int {
    var count = 0
    text.map {
        count += isAVowel($0) ? 1 : 0
    }
    return count
}

func isAVowel(_ letter: Character) -> Bool {
    letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
}

func numberOfConsonants(_ text: String) -> Int {
    numberOfLetters(text) - numberOfVowels(text)
}

func numberOfWords(_ text: String) -> Int {
    text.components(separatedBy: " ").count
}
