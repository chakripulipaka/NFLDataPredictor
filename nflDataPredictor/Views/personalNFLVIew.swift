//
//  personalNFLPred.swift
//  nflDataPredictor
//
//  Created by Chakri Pulipaka on 1/31/24.
//

import SwiftUI
import CoreML


struct personalNFLView: View {
    
    @State var points_diff_input = "0"
    @State var points_input = "0"
    @State var score_pct_input = "0"
    @State var pass_net_yds_per_att_input = "0"
    @State var total_yards_input = "0"
    @State var yds_per_play_offense_input = "0"
    @State var pass_td_input = "0"
    @State var first_down_input = "0"
    @State var turnover_pct_input = "0"
    @State var points_opp_input = "0"
    
    @State var predictText = ""
    
    var body: some View {
        VStack{
            Text("Total points")
            TextField("Points", text: $points_input)
                .padding()
                .background(Color.gray.opacity(0.1).cornerRadius(10))
                .font(.headline)
                .frame(height: 10)
            
            Text("Total points opponent")
            TextField("Total opponent points", text: $points_opp_input)
                .padding()
                .background(Color.gray.opacity(0.1).cornerRadius(10))
                .font(.headline)
                .frame(height: 10)
            
            Text("Total points diff")
            TextField("Total points diff", text: $points_diff_input)
                .padding()
                .background(Color.gray.opacity(0.1).cornerRadius(10))
                .font(.headline)
                .frame(height: 10)
            
            
            Text("Total score percent")
            TextField("Score percent", text: $score_pct_input)
                .padding()
                .background(Color.gray.opacity(0.1).cornerRadius(10))
                .font(.headline)
                .frame(height: 10)
            
            Text("Total Yardage")
            TextField("Yardage", text: $total_yards_input)
                .padding()
                .background(Color.gray.opacity(0.1).cornerRadius(10))
                .font(.headline)
                .frame(height: 10)
            
            Text("Total yds per play offense")
            TextField("Yards per play offense", text: $yds_per_play_offense_input)
                .padding()
                .background(Color.gray.opacity(0.1).cornerRadius(10))
                .font(.headline)
                .frame(height: 10)
            
            Text("Total yds per pass attempt")
            TextField("Total yds per pass attempt", text: $pass_net_yds_per_att_input)
                .padding()
                .background(Color.gray.opacity(0.1).cornerRadius(10))
                .font(.headline)
                .frame(height: 10)
            
            Text("Total pass td")
            TextField("Total pass td", text: $pass_td_input)
                .padding()
                .background(Color.gray.opacity(0.1).cornerRadius(10))
                .font(.headline)
                .frame(height: 10)
                
            
            Text("Total first down")
            TextField("Total first down", text: $first_down_input)
                .padding()
                .background(Color.gray.opacity(0.1).cornerRadius(10))
                .font(.headline)
                .frame(height: 10)
            
            Text("Total turnover pct")
            TextField("Total turnover pct", text: $turnover_pct_input)
                .padding()
                .background(Color.gray.opacity(0.1).cornerRadius(10))
                .font(.headline)
                .frame(height: 10)
        }
        
        Button(action: {
            var prediction = userGenModel(pts_diff: Int64(points_diff_input)!, pts: Int64(points_input)!, scre_pct: Double(score_pct_input)!, pass_net_yds_per_att: Double(pass_net_yds_per_att_input)!, total_yards: Int64(total_yards_input)!, yds_per_play_offense: Double(yds_per_play_offense_input)!, pass_td: Int64(pass_td_input)!, first_down: Int64(first_down_input)!, turnover_pct: Double(turnover_pct_input)!, points_opp: Int64(points_opp_input)!)
            
            print(prediction?.win_loss_perc ?? 0)
            
        }, label:{
            Text("Predict")
        })
        
    }
}


func userGenModel(pts_diff: Int64, pts: Int64, scre_pct: Double, pass_net_yds_per_att: Double, total_yards: Int64, yds_per_play_offense: Double, pass_td: Int64, first_down: Int64, turnover_pct: Double, points_opp: Int64) -> NFL_User_Generated_Model_2Output? {
    do{
        let config = MLModelConfiguration()
        let model = try NFL_User_Generated_Model_2 (configuration:config)
        
        let prediction = try model.prediction(points_diff: pts_diff, points: pts, score_pct: scre_pct, pass_net_yds_per_att: pass_net_yds_per_att, total_yards: total_yards, yds_per_play_offense: yds_per_play_offense, pass_td: pass_td, first_down: first_down, turnover_pct: turnover_pct, points_opp: points_opp)
        
        return prediction
    }
    catch{
        
    }
    
    return nil
}

/*
func userGenModel() -> NFL_User_Generated_Model_2Output? {
    do{
        let config = MLModelConfiguration()
        let model = try NFL_User_Generated_Model_2 (configuration:config)
        
        let prediction = try model.prediction(points_diff: 1, points: 1, score_pct: 1, pass_net_yds_per_att: 1, total_yards: 1, yds_per_play_offense: 1, pass_td: 1, first_down: 1, turnover_pct: 1, points_opp: 1)
        
        return prediction
    }
    catch{
        
    }
    
    return nil
}
 */

#Preview {
    personalNFLView()
}
