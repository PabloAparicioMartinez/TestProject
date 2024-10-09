import Foundation

class TestRepository {
    
    var discos: [DiscoData] = [
        
        DiscoData(discoName: "LA CÚPULA", discoLocation: "Olabeaga Kaia, 21, Basurtu-Zorrotza, 48013 Bilbo", discoMusic: "Electrónica & EDM", discoImage: "LA CUPULA"),
        DiscoData(discoName: "NOVA", discoLocation: "Ledesma Musikariaren Kalea, Nº18, 1º IZQ, Abando", discoMusic: "Reggeaton & Latino",  discoImage: "NOVA"),
        DiscoData(discoName: "PANDORA", discoLocation: "Egia Jeneralaren K., 6, Abando, 48010 Bilbao", discoMusic: "Reggeaton",  discoImage: "PANDORA"),
    ]
    
    var events: [EventData] = [
    
        EventData(eventDate: "Viernes, 27 de septiembre de 2024", eventImage: "TROPICAL", eventName: "TROPICAL +18", eventMusic: "Reggeaton clásico", eventFriends: "2 amigos", eventAvailability: "DISPONIBLES"),
        EventData(eventDate: "Sábado, 28 de septiembre de 2024", eventImage: "MINIMAL", eventName: "MINIMAL +22", eventMusic: "Reggeaton lento", eventFriends: "5 amigos", eventAvailability: "DISPONIBLES"),
        EventData(eventDate: "Viernes, 4 de octubre de 2024", eventImage: "LIGHT PARTY", eventName: "LIGHT PARTY +19", eventMusic: "Reggeaton antiguo", eventFriends: "0 amigos", eventAvailability: "DISPONIBLES")
    ]
}
