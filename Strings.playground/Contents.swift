import UIKit

var phrase = "https:\/\/media2.giphy.com\/media\/KoLUMJCir4EBq\/100_s.gif"

let vowels: String = "\\"
phrase.repla(where: { vowels.contains($0) })
// phrase == "Th rn n Spn stys mnly n th pln."
print(phrase)

