import SwiftUI

class FaceBookAccount{
    var name: String?
    var email: String?
    var id: String?
    
    init(){
    }
    
    init(_ name: String, _ email: String, _ id: String) {
        self.name = name
        self.email = email
        self.id = id
    }
}
