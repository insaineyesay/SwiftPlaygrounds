import UIKit

func calculateBMI(weight: Double, height: Double, measuringSystem: String)  -> String {
    var bmi: Double = 0.0
    var shortenedBMI: String = ""
    var interpretation = ""
    
    if measuringSystem == "Imperial" {
        let usWeight = weight * 0.45359237
        let usHeight = height * 0.0254
        
        bmi = usWeight / (pow(usHeight, 2))
        shortenedBMI = String(format: "%.2f", bmi)
    } else {
        bmi = weight / (pow(height, 2))
        shortenedBMI = String(format: "%.2f", bmi)
    }
    
    if (Int(bmi) > 25) {
        interpretation = "Sorry, you're measuring to be overweight"
    } else if (Int(bmi) > Int(18.5) && Int(bmi) <= 25) {
        interpretation = "You're looking to be about normal weight"
    } else  {
        interpretation = "Looks like you need to eat a bit more, you're underweight"
    }
    return "Your BMI is \(shortenedBMI) and \(interpretation)"
}

var bmiResult = calculateBMI(weight: 160, height: 72, measuringSystem: "Imperial")
print(bmiResult)
