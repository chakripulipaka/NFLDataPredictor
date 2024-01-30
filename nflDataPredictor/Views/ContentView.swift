//
//  homeView.swift
//  nflDataPredictor
//
//  Created by Chakri Pulipaka on 1/31/24.
//

import SwiftUI

struct TabBarM: Identifiable{
    var id = UUID()
    var iconname:String
    var tab:TabIcon
    var index:Int
}

let tabItems = [
    TabBarM(iconname: "house.fill", tab: .Home, index:0),
    TabBarM(iconname: "cloud.fill", tab: .userMade, index:1),
    TabBarM(iconname: "football.fill", tab: .autoGen, index:2),
    TabBarM(iconname: "pencil", tab: .quiz, index: 3),
    TabBarM(iconname: "person.fill", tab: .userSettings, index:4),
]

enum TabIcon: String{
    case Home
    case userMade
    case autoGen
    case quiz
    case userSettings
}

struct homeView: View {
    @Binding var selectedTab: TabIcon
    @State var XOffset = 0 * 70.0
    
    var body: some View {
        
        //NavigationView{
        
            VStack{
                /*
                NavigationLink(destination: allTeamsView(), label:{
                    Text("2024-25 NFL Season")
                        .font(.system(size: 40))
                        .frame(width: 250, height: 150, alignment:.center)
                        .background(Color.green)
                        .foregroundColor(Color.black)
                        .cornerRadius(12)
                        
                })
                
                NavigationLink(destination: personalNFLView(), label:{
                    Text("Personal NFL Season")
                        .font(.system(size: 40))
                        .frame(width: 250, height: 150, alignment:.center)
                        .background(Color.green)
                        .foregroundColor(Color.black)
                        .cornerRadius(12)
                        
                })
                 */
                 
                
                HStack{
                    ForEach(tabItems){ item in
                        Spacer()
                        Image(systemName: item.iconname)
                            .foregroundStyle(selectedTab == item.tab ? .blue: .gray)
                            .onTapGesture{
                                withAnimation{
                                    selectedTab = item.tab
                                    XOffset = CGFloat(item.index * 70)
                                }
                            }
                        Spacer()
                    }
                    .frame(width:23)
                }
                .frame(width: 365, height:70)
                .background(CustomShape(xAxis: XOffset + 12).clipShape(.rect(cornerRadius: 12)))
                .overlay(alignment: .topLeading){
                    Circle().frame(width: 10, height:10)
                        .offset(x:38)
                        .offset(x: XOffset)
                }
                .offset(y:400)
            }
            .offset(y:-60)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Pulipaka Predictions")
                        .font(.largeTitle.bold())
                        .accessibilityAddTraits(.isHeader)
                }
            }
        }
    //}
}

#Preview {
    //homeView(selectedTab: .constant(.Home))
    homeView(selectedTab: .constant(.Home))
}
