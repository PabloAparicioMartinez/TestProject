import SwiftUI


struct EventData: Identifiable {
    
    var id = UUID()
    var eventDate: String
    var eventImage: String
    var eventName: String
    var eventMusic: String
    var eventFriends: String
    var eventAvailability: String
}
