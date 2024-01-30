//
//  ContentView.swift
//  nflDataPredictor
//
//  Created by Chakri Pulipaka on 1/29/24.
//

import SwiftUI
import CoreML

func testModel(points_diff: Int64, points: Int64, win_loss_perc: Double, wins: Int64, score_pct:Double, losses:Int64) -> Double?{
    do{
        let config = MLModelConfiguration()
        let model = try nfl2025 (configuration:config)
        
        let prediction = try model.prediction(points_diff: points_diff, points: points, win_loss_perc: win_loss_perc, wins: wins, score_pct: score_pct, losses: losses)
        
        return Double(round(1000 * prediction.next_year_wlr) / 1000)
    }
    catch{
        
    }
    
    return nil
}

struct allTeamsView: View {
    
    let predictedPatriotsWLR = testModel(points_diff: -130, points: 236, win_loss_perc:0.235, wins:4, score_pct: 20.2, losses: 13)!
    
    let predictedDolphinsWLR = testModel(points_diff: 105, points: 496, win_loss_perc:0.647, wins:11, score_pct: 43.5, losses: 6)!
    
    let predictedBillsWLR = testModel(points_diff: 140, points: 451, win_loss_perc:0.647, wins:11, score_pct: 41.4, losses: 6)!
    
    let predictedJetsWLR = testModel(points_diff: -87, points: 268, win_loss_perc:0.412, wins:7, score_pct: 26.0, losses: 10)!
    
    let predictedRavensWLR = testModel(points_diff: 203, points: 483, win_loss_perc:0.765, wins:13, score_pct: 43.1, losses: 4)!
    
    let predictedBengalsWLR = testModel(points_diff: -18, points: 366, win_loss_perc:0.529, wins:9, score_pct: 34.6, losses: 8)!
    
    let predictedSteelersWLR = testModel(points_diff: -20, points: 304, win_loss_perc:0.588, wins:10, score_pct: 29.9, losses: 7)!
    
    let predictedBrownsWLR = testModel(points_diff: 34, points: 396, win_loss_perc:0.647, wins:11, score_pct: 32.9, losses: 6)!
    
    let predictedColtsWLR = testModel(points_diff: -19, points: 396, win_loss_perc:0.529, wins:9, score_pct: 35.7, losses: 8)!
    
    let predictedTitansWLR = testModel(points_diff: -62, points: 305, win_loss_perc:0.353, wins:6, score_pct: 32.6, losses: 11)!
    
    let predictedJaguarsWLR = testModel(points_diff: 6, points: 377, win_loss_perc:0.529, wins:9, score_pct: 35.4, losses: 8)!
    
    let predictedTexansWLR = testModel(points_diff: 24, points: 377, win_loss_perc:0.588, wins:10, score_pct: 37.2, losses: 7)!
    
    let predictedChiefsWLR = testModel(points_diff: 77, points: 371, win_loss_perc:0.647, wins:11, score_pct: 39.3, losses: 6)!
    
    let predictedBroncosWLR = testModel(points_diff: -56, points: 357, win_loss_perc:0.471, wins:8, score_pct: 31.8, losses: 9)!
    
    let predictedRaidersWLR = testModel(points_diff: 1, points: 332, win_loss_perc:0.471, wins:8, score_pct: 31.8, losses: 9)!
    
    let predictedChargersWLR = testModel(points_diff: -52, points: 346, win_loss_perc:0.294, wins:5, score_pct: 34.7, losses: 12)!
    
    let predictedEaglesWLR = testModel(points_diff: 5, points: 433, win_loss_perc:0.647, wins:11, score_pct: 42.9, losses: 6)!
    
    let predictedCowboysWLR = testModel(points_diff: 194, points: 509, win_loss_perc:0.706, wins:12, score_pct: 50.3, losses: 5)!
    
    let predictedCommandersWLR = testModel(points_diff: -189, points: 329, win_loss_perc:0.235, wins:4, score_pct: 29.4, losses: 13)!
    
    let predictedGiantsWLR = testModel(points_diff: -141, points: 266, win_loss_perc:0.353, wins:6, score_pct: 23.6, losses: 11)!
    
    let predictedPackersWLR = testModel(points_diff: 33, points: 383, win_loss_perc:0.529, wins:9, score_pct: 39.7, losses: 8)!
    
    let predictedVikingsWLR = testModel(points_diff: -18, points: 344, win_loss_perc:0.412, wins:7, score_pct: 34.1, losses: 10)!
    
    let predictedBearsWLR = testModel(points_diff: -19, points: 360, win_loss_perc:0.412, wins:7, score_pct: 38.0, losses: 10)!
    
    let predictedLionsWLR = testModel(points_diff: 66, points: 461, win_loss_perc:0.706, wins:12, score_pct: 40.6, losses: 5)!
    
    let predictedPanthersWLR = testModel(points_diff: -180, points: 236, win_loss_perc:0.118, wins:2, score_pct: 25.0, losses: 15)!
    
    let predictedSaintsWLR = testModel(points_diff: 75, points: 402, win_loss_perc:0.529, wins:9, score_pct: 36.6, losses: 8)!
    
    let predictedBuccaneersWLR = testModel(points_diff: 23, points: 348, win_loss_perc:0.529, wins:9, score_pct: 35.5, losses: 8)!
    
    let predictedFalconsWLR = testModel(points_diff: -52, points: 321, win_loss_perc:0.412, wins:7, score_pct: 32.1, losses: 10)!
    
    let predictedRamsWLR = testModel(points_diff: 27, points: 404, win_loss_perc:0.588, wins:10, score_pct: 41.1, losses: 7)!
    
    let predictedSeahawksWLR = testModel(points_diff: -38, points: 364, win_loss_perc:0.529, wins:9, score_pct: 38.8, losses: 8)!
    
    let predicted49ersWLR = testModel(points_diff: 193, points: 491, win_loss_perc:0.706, wins:12, score_pct: 45.3, losses: 5)!
    
    let predictedCardinalsWLR = testModel(points_diff: -125, points: 330, win_loss_perc:0.235, wins:4, score_pct: 35.0, losses: 13)!
    
    @State var text = " "
    @State var url = "https://i.pinimg.com/736x/d1/24/7d/d1247d5024cf6d5add0f9106996650c0.jpg"
    
    var body: some View {
        
        VStack{
            Menu("What team do you want to see?"){
                Menu("AFC"){
                    Menu("AFC North"){
                        Button("Ravens"){
                            text = "Ravens: " + String(predictedRavensWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/ucsdijmddsqcj1i9tddd"
                        }
                        Button("Browns"){
                            text = "Browns: " + String(predictedBrownsWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/fgbn8acp4opvyxk13dcy"
                        }
                        Button("Steelers"){
                            text = "Steelers: " + String(predictedSteelersWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/xujg9t3t4u5nmjgr54wx"
                        }
                        Button("Bengals"){
                            text = "Bengals: " + String(predictedBengalsWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/okxpteoliyayufypqalq"
                        }
                    }
                    Menu("AFC East"){
                        Button("Bills"){
                            text = "Bills: " + String(predictedBillsWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/giphcy6ie9mxbnldntsf"
                        }
                        Button("Dolphins"){
                            text = "Dolphins: " + String(predictedDolphinsWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/lits6p8ycthy9to70bnt"
                        }
                        Button("Jets"){
                            text = "Jets: " + String(predictedJetsWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/ekijosiae96gektbo4iw"
                        }
                        Button("Patriots"){
                            text = "Patriots: " + String(predictedPatriotsWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/moyfxx3dq5pio4aiftnc"
                        }
                    }
                    Menu("AFC South"){
                        Button("Texans"){
                            text = "Texans: " + String(predictedTexansWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/bpx88i8nw4nnabuq0oob"
                        }
                        Button("Jaguars"){
                            text = "Jaguars: " + String(predictedJaguarsWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/qycbib6ivrm9dqaexryk"
                        }
                        Button("Colts"){
                            text = "Colts: " + String(predictedColtsWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/ketwqeuschqzjsllbid5"
                        }
                        Button("Titans"){
                            text = "Titans: " + String(predictedTitansWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/pln44vuzugjgipyidsre"
                        }
                    }
                    Menu("AFC West"){
                        Button("Chiefs"){
                            text = "Chiefs: " + String(predictedChiefsWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/ujshjqvmnxce8m4obmvs"
                        }
                        Button("Raiders"){
                            text = "Raiders: " + String(predictedRaidersWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/gzcojbzcyjgubgyb6xf2"
                        }
                        Button("Broncos"){
                            text = "Broncos: " + String(predictedBroncosWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/t0p7m5cjdjy18rnzzqbx"
                        }
                        Button("Chargers"){
                            text = "Chargers: " + String(predictedChargersWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/dhfidtn8jrumakbogeu4"
                        }
                    }
                }
                Menu("NFC"){
                    Menu("NFC North"){
                        Button("Lions"){
                            text = "Lions: " + String(predictedLionsWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/ocvxwnapdvwevupe4tpr"
                        }
                        Button("Packers"){
                            text = "Packers: " + String(predictedPackersWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/gppfvr7n8gljgjaqux2x"
                        }
                        Button("Vikings"){
                            text = "Vikings: " + String(predictedVikingsWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/teguylrnqqmfcwxvcmmz"
                        }
                        Button("Bears"){
                            text = "Bears: " + String(predictedBearsWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/ijrplti0kmzsyoaikhv1"
                        }
                    }
                    Menu("NFC East"){
                        Button("Cowboys"){
                            text = "Cowboys: " + String(predictedCowboysWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/ieid8hoygzdlmzo0tnf6"
                        }
                        Button("Eagles"){
                            text = "Eagles: " + String(predictedEaglesWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/puhrqgj71gobgdkdo6uq"
                        }
                        Button("Giants"){
                            text = "Giants: " + String(predictedGiantsWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/t6mhdmgizi6qhndh8b9p"
                        }
                        Button("Commanders"){
                            text = "Commanders: " + String(predictedCommandersWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/xymxwrxtyj9fhaemhdyd"
                        }
                    }
                    Menu("NFC South"){
                        Button("Buccaneers"){
                            text = "Buccaneers: " + String(predictedBuccaneersWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/v8uqiualryypwqgvwcih"
                        }
                        Button("Saints"){
                            text = "Saints: " + String(predictedSaintsWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/grhjkahghjkk17v43hdx"
                        }
                        Button("Falcons"){
                            text = "Falcons: " + String(predictedFalconsWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/d8m7hzpsbrl6pnqht8op"
                        }
                        Button("Panthers"){
                            text = "Panthers: " + String(predictedPanthersWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/ervfzgrqdpnc7lh5gqwq"
                        }
                    }
                    Menu("NFC West"){
                        Button("49ers"){
                            text = "49ers: " + String(predicted49ersWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/dxibuyxbk0b9ua5ih9hn"
                        }
                        Button("Rams"){
                            text = "Rams: " + String(predictedRamsWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/ayvwcmluj2ohkdlbiegi"
                        }
                        Button("Seahawks"){
                            text = "Seahawks: " + String(predictedSeahawksWLR)
                            url = "https://res.cloudinary.com/nflleague/image/private/f_auto/league/gcytzwpjdzbpwnwxincg"
                        }
                        Button("Cardinals"){
                            text = "Cardinals: " + String(predictedCardinalsWLR)
                            url = "https://static.www.nfl.com/image/private/f_auto/league/u9fltoslqdsyao8cpm0k"
                            
                        }
                    }
                }
            }
            
            Text(text)
            
            AsyncImage(url: URL(string:url)){
                image in image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:350)
            } placeholder:{
                ProgressView()
            }
        }
        .navigationTitle("2024-25 Predictions")
        
    }
}

#Preview {
    allTeamsView()
}
