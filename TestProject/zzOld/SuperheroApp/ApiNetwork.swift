import Foundation

class ApiNetwork {
    
    struct Wrapper: Codable {
        
        let response: String
        let results: [SuperHero]
    }

    struct SuperHero: Codable, Identifiable {
        
        let id: String
        let name: String
        let image: SuperHeroImage
    }
    
    struct SuperHeroImage: Codable {
        
        let url: String
    }
    
    func getHerosByQuery(query: String) async throws -> Wrapper {
        
        let url = URL(string:"https://superheroapi.com/api/1c0ce561889c2359d912be575767ac8a/search/\(query)")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let wrapper = try JSONDecoder().decode(Wrapper.self, from: data)
        return wrapper
    }
}
