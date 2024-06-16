import UIKit

// Type aliases

typealias Address = [String: String]

var address: Address = ["City": "State"]

func validateCode(address: Address) {
    
    print(address)

}

validateCode(address: address)

typealias PromoCodeValidationFunction = ((String) -> (Bool))?
var validateFunction: PromoCodeValidationFunction
