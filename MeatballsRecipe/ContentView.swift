import SwiftUI

struct ContentView: View {
    @State private var prepTime: Int = 10
    @State private var cookTime: Int = 20
    @State private var food: String = "Meatball"
    
    @State private var openNewPage: Bool = false
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack(alignment: .center, spacing: 20){
                
                Image("Meatball").resizable().frame(width: geometry.size.width, height: geometry.size.height/3)
                
                VStack(alignment: .leading){
                    
                    Text("\(food)")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                    
                    HStack(alignment:.center, spacing: 1){
                        Text("Prep Time: \(prepTime) mins")
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            .background(.red)
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                        Text("Cook Time: \(cookTime) mins")
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            .background(.orange)
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                        Text("Total Time: \(prepTime+cookTime) mins")
                            .bold()
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            .background(.green)
                            .font(.system(size: 14))
                    }.frame(width: geometry.size.width, height: 30, alignment: .leading)
                    
                }.padding(2)
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Ingredients").bold().padding().frame(height: 30, alignment: .center).font(.title)
                    Text("1 pound 80% lean ground beef")
                    Text("1 large egg , beaten")
                    Text("1/4 cup breadcrumbs")
                    Text("1/4 cup grated parmesan cheese")
                    Text("1/4 cup finely chopped onion")
                    Text("2 teaspoons minced garlic")
                    Text("3/4 teaspoon Kosher salt")
                    Text("1/4 teaspoon ground black pepper")
                    Text("2 Tablespoons chopped fresh Italian flat leaf parsley")
                }
                
                Spacer()
                
                HStack(alignment: .center, spacing: 0){
                    
                    Button(action:{
                        print("Clicked on Like")
                    }){
                        Text("Like").frame(width: geometry.size.width/2, height: 40, alignment: .center).background(.yellow)
                    }
                    Button(action:{
                        print("Clicked on Rate")
                        self.openNewPage = true
                    }){
                        Text("Rate ").frame(width: geometry.size.width/2, height: 40, alignment: .center).background(.orange)
                    }.sheet(isPresented: $openNewPage){
                        RateView(commentedTopic: "\(food)")
                    }
                }
            }.padding(2)
        }
    }
}

struct RateView: View {
    @Environment(\.dismiss) var dismiss
    var commentedTopic: String?
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading, spacing: 10){
                
                Text("Please add your comments about \(commentedTopic!) :")
                    .font(.title3)
                    .background(.orange)
                
                Spacer()
                
                HStack(spacing:0) {
                    
                    Button(action:{
                        print("Clicked on Back")
                        dismiss()
                    }){
                        Text("Back to Home")
                            .padding()
                            .background(.gray)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: CommentView()){
                        Text("Go to Facebook")
                    }
                }
                
            }.padding(10).navigationBarTitle("Comment Page") //->.navigationBarTitle sayfa icinde bir yerde bulunmalidir. Burada VStack'a monte edildi.
        }
    }
    
}

struct CommentView: View {
    
    var body: some View {
        VStack() {
            Text("Comment Here :").font(.title3).background(.green)
        }}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
