//
//  ContentView.swift
//  MeatballsRecipe
//
//  Created by Martin Smith on 21/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var prepTime: Int = 10
    @State var cookTime: Int = 20
    
    var body: some View {
        
        GeometryReader { geometry in
        
            VStack(alignment: .center, spacing: 20){
            Image("Meatball").resizable().frame(width: geometry.size.width, height: geometry.size.height/3)
            
            VStack(alignment: .leading){
                Text("Meatball")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                
                HStack(alignment:.center, spacing: 1){
                    Text("Prep Time: \(prepTime) mins")
                        .frame(width: .infinity, height: .infinity, alignment: .leading)
                        .background(.red)
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                    Text("Cook Time: \(cookTime) mins")
                        .frame(width: .infinity, height: .infinity, alignment: .leading)
                        .background(.orange)
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                    Text("Total Time: \(prepTime+cookTime) mins")
                        .bold()
                        .background(.green)
                        .font(.system(size: 14))
                }.frame(width: geometry.size.width, height: 30, alignment: .center)
                
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
                    Text("Like").frame(width: geometry.size.width/2, height: 40, alignment: .center).background(.yellow)
                    Text("Rate ").frame(width: geometry.size.width/2, height: 40, alignment: .center).background(.orange)
                }
            }
            }.padding(2)
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
