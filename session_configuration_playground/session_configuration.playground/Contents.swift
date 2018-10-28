import UIKit


let sharedSession = URLSession.shared
sharedSession.configuration.allowsCellularAccess

let myDefaultConfiguration = URLSessionConfiguration.default
let eConfig = URLSessionConfiguration.ephemeral
let bConfig = URLSessionConfiguration.background(withIdentifier: "com.oliveunion.sessions")

myDefaultConfiguration.allowsCellularAccess = false
myDefaultConfiguration.allowsCellularAccess
myDefaultConfiguration.waitsForConnectivity = true

let myDefaultSession = URLSession(configuration: myDefaultConfiguration)

