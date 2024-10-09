import SwiftUI
import SDWebImageSwiftUI

struct SuperheroSearcher: View {
           
    @State var superheroName: String = ""
    @State var wrapper: ApiNetwork.Wrapper? = nil
    @State var loading: Bool = false
    
    var body: some View {
        VStack {
                        
            TextField("", text: $superheroName, prompt:
                Text("Buscar superhéroe")
                .foregroundStyle(.gray)
                .bold()
                .font(.title2)
            )
            .foregroundStyle(.white)
            .bold()
            .font(.title2)
            .padding(16)
            .border(.gray, width: 1.5)
            .padding(8)
            .autocorrectionDisabled()
            .onSubmit {
                loading = true
                Task {
                    do {
                        wrapper = try await ApiNetwork().getHerosByQuery(query: superheroName)
                    } catch {
                        print("Error")
                    }
                    loading = false
                }
            }
            
            if (loading) {
                ProgressView().tint(.white)
            }
            /*NavigationStack {
                    List(wrapper?.results ?? []) { superhero in
                        ZStack {
                            SuperHeroItem(name: superhero.name, image: superhero.image.url)
                            NavigationLink(destination: {}) {
                                EmptyView()
                            }
                            .opacity(0)
                        }
                        .listRowBackground(Color.lightBlue1)
                    }
                    .listStyle(.plain)
                
            }*/
            
            Spacer()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.lightBlue1)
        
        
    }
}

struct SuperHeroItem:View {
    
    let name: String
    let image: String
    
    var body: some View {
        
        ZStack {
            
            WebImage(url: URL(string: image))
                .resizable()
                .indicator(.activity)
                .scaledToFill()
                .frame(height: 200)
            
            VStack {
                
                Spacer()
                
                Text(name)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                    .padding()
                    .background(.gray.opacity(0.5))
            }
            
        }
        .frame(height: 200)
        .cornerRadius(32)
        .padding()
    }
}

#Preview {
    SuperheroSearcher()
}
