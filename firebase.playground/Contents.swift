import UIKit

class Firebase {
    func createUser(username: String, password: String, completion: (Bool, Int) -> Void) {
        // does something time consuming
        let isSucccess = true
        let userId = 123
        
        completion(isSucccess, userId)
    }
}

class MyApp {
    func registerButtonPressed () {
        let firebase = Firebase()
        
        firebase.createUser(username: "rage", password: "password") {
            (isSuccess: Bool, userId: Int) in
                print("registration is succesful: \(isSuccess)")
                print("userId is: \(userId)")
        }
    }
}
let myApp = MyApp()
myApp.registerButtonPressed()
