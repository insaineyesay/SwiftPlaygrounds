import UIKit

var loginArrayOfTuples = [(String, String)]()
var loginResponse1 = ("sometString", "anotherString")
var loginResponse2 = ("somethingElse", "evenMoreString")
var loginResponse3 = ("somethingMore", "notMuchMore")
loginArrayOfTuples.append(loginResponse1)
loginArrayOfTuples.append(loginResponse2)
loginArrayOfTuples.append(loginResponse3)

//print(loginArrayOfTuples[1].1)


let requiredLoginResponseParameters = [
    "SMUSER": "~DEMO@HRA5",
    "X-MADT-UserToken": "79b90f2e-b25c-45f8-a535-b3d4aa310611",
    "meta-sessionid": "6ef560b4-6a84-4619-9acf-7399f1df7bcb"
]

let intIndex = 1
let index = requiredLoginResponseParameters.
//print(requiredLoginResponseParameters.key[index])
