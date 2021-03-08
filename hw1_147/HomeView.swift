//
//  HomeView.swift
//  hw1_147
//
//  Created by User12 on 2021/3/3.
//

import SwiftUI
var riddles: [Riddle] = [
    Riddle(question: "老婆婆燙頭髮", hint: "猜一食物", answer: "銀絲捲", options: ["銀絲卷", "巧克力", "雞蛋糕", "牛排"], ansPosition: 0),
    Riddle(question: "老婆不幫忙", hint: "猜一成語", answer: "公事公辦", options: ["後悔莫及", "惹事生非", "公事公辦", "投機取巧"], ansPosition: 2),
    Riddle(question: "白蘿蔔喝醉會變成什麼", hint: "猜一食物", answer: "紅蘿蔔", options: ["黑蘿蔔", "藍蘿蔔", "綠蘿蔔", "紅蘿蔔"], ansPosition: 3),
    Riddle(question: "什麼豆腐能打傷人", hint: "猜一食物", answer: "凍豆腐", options: ["雞蛋豆腐", "嫩豆腐", "凍豆腐", "皮蛋豆腐"], ansPosition: 2),
    Riddle(question: "什麼龍最輕", hint: "猜一物品", answer: "保麗龍", options: ["保麗龍", "小火龍", "木須龍", "暴龍"], ansPosition: 0),
    Riddle(question: "兩好球三壞球", hint: "猜一地名 ", answer: "南投", options: ["台北", "基隆", "彰化", "南投"], ansPosition: 3),
    Riddle(question: "十個哥哥", hint: "猜一字", answer: "克", options: ["兄", "兇", "古", "克"], ansPosition: 3),
    Riddle(question: "歐洲姑娘", hint: "猜一字", answer: "要", options: ["歐", "要", "嫗", "樞"], ansPosition: 1),
    Riddle(question: "玉皇太后", hint: "猜一地名", answer: "天母", options: ["信義", "中山", "天母", "板橋"], ansPosition: 2),
    Riddle(question: "孔子是我國最偉大的什麼家", hint: "", answer: "老人家", options: ["不二家", "貴族世家", "全家", "老人家"], ansPosition: 3),
    Riddle(question: "什麼寶很多人都在用", hint: "", answer: "支付寶", options: ["支付寶", "天線寶寶", "小寶寶", "呆寶"], ansPosition: 0),
    Riddle(question: "什麼貓從來沒見過老鼠", hint: "", answer: "瞎貓", options: ["湯姆貓", "瞎貓", "龍貓", "Kitty貓"], ansPosition: 1),
    Riddle(question: "什麼動物最愛貼在牆上", hint: "猜一動物", answer: "海豹", options: ["人", "貓貓", "狗狗", "海豹"], ansPosition: 3),
    Riddle(question: "胖子從12樓掉下來會變什麼", hint: "", answer: "死胖子", options: ["死胖子", "瘦子", "E SO", "大胖子"], ansPosition: 0),
    Riddle(question: "沒有女人的城市", hint: "猜一地名", answer: "銀絲捲", options: ["可憐城", "漢城", "基隆市", "桃園市"], ansPosition: 1),
    Riddle(question: "要形容女孩子好看，說什麼話她最高興", hint: "", answer: "謊話", options: ["實話", "難聽話", "謊話", "不要說話"], ansPosition: 2)
]
class OptionColors: ObservableObject{
    @Published var colors = [Color.white, Color.white, Color.white, Color.white]
    @Published var isHome = true
    @Published var score = 0
}
struct HomeView: View {
    @StateObject var optionColors = OptionColors()
    @State private var count = 0
    var body: some View {
        if(!optionColors.isHome){
            ZStack{
                BackgroundView(doorOpacity: Double(1), doorX1: CGFloat(-100), doorX2: CGFloat(90))
                VStack{
                    if(count<=9){
                        Text("第 \(count+1) 題")
                            .foregroundColor(Color(red: 252/255, green: 244/255, blue: 4/255))
                            .font(Font.system(size: 25))
                            .padding()
                        RiddleView(riddle: riddles[count])
                            .environmentObject(optionColors)
                            .frame(width: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        if(count<=8){
                            if(optionColors.colors[0] == Color.green || optionColors.colors[1]==Color.green || optionColors.colors[2]==Color.green || optionColors.colors[3]==Color.green){
                                
                                Text("下一題")
                                    .foregroundColor(Color(red: 252/255, green: 244/255, blue: 4/255))
                                    .font(Font.system(size: 25))
                                    .padding()
                                    .onTapGesture{
                                        optionColors.colors[0]  = Color.white
                                        optionColors.colors[1]  = Color.white
                                        optionColors.colors[2]  = Color.white
                                        optionColors.colors[3]  = Color.white
                                        count = count+1
                                    }
                                
                                
                            }
                            else{
                                Text("下一題")
                                    .foregroundColor(Color(red: 37/255, green: 52/255, blue: 80/255))
                                    .font(Font.system(size: 25))
                                    .padding()
                                    .onTapGesture{
                                        optionColors.colors[0]  = Color.white
                                        optionColors.colors[1]  = Color.white
                                        optionColors.colors[2]  = Color.white
                                        optionColors.colors[3]  = Color.white
                                        count = count+1
                                    }
                                
                                
                            }
                        }
                        else{
                            if(optionColors.colors[0] == Color.green || optionColors.colors[1]==Color.green || optionColors.colors[2]==Color.green || optionColors.colors[3]==Color.green){
                                
                                Text("統計分數")
                                    .foregroundColor(Color(red: 252/255, green: 244/255, blue: 4/255))
                                    .font(Font.system(size: 25))
                                    .padding()
                                    .onTapGesture{
                                        count = count+1
                                    }
                            }
                            else{
                                Text("統計分數")
                                    .foregroundColor(Color(red: 37/255, green: 52/255, blue: 80/255))
                                    .font(Font.system(size: 25))
                                    .padding()
                                    .onTapGesture{
                                        count = count+1
                                    }
                            }
                        }
                        
                        
                    }
                    else{
                        VStack{
                            Image("trophy")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("總共獲得\(optionColors.score)分")
                                .foregroundColor(Color.white)
                                .font(Font.system(size: 25))
                                .padding()
                                .onTapGesture{
                                    count = count+1
                                }
                            
                            
                            
                            if(optionColors.colors[0] == Color.green || optionColors.colors[1]==Color.green || optionColors.colors[2]==Color.green || optionColors.colors[3]==Color.green){
                                VStack{
                                    Button(action: {
                                        riddles.shuffle()
                                        count = 0
                                        optionColors.score = 0
                                        optionColors.colors[0]  = Color.white
                                        optionColors.colors[1]  = Color.white
                                        optionColors.colors[2]  = Color.white
                                        optionColors.colors[3]  = Color.white
                                    }, label: {
                                        Text("再玩一次")
                                            .foregroundColor(Color(red: 252/255, green: 244/255, blue: 4/255))
                                            .font(Font.system(size: 25))
                                            .padding()
                                    })
                                    Text("回到主畫面")
                                        .foregroundColor(Color(red: 252/255, green: 244/255, blue: 4/255))
                                        .font(Font.system(size: 25))
                                        .onTapGesture {
                                            optionColors.isHome = true
                                            optionColors.score = 0
                                            count = 0
                                        }
                                    
                                }.frame(width: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            else{
                                VStack{
                                    Button(action: {
                                        riddles.shuffle()
                                        count = 0
                                        optionColors.score = 0
                                        optionColors.colors[0]  = Color.white
                                        optionColors.colors[1]  = Color.white
                                        optionColors.colors[2]  = Color.white
                                        optionColors.colors[3]  = Color.white
                                    }, label: {
                                        Text("再玩一次")
                                            .foregroundColor(Color(red: 37/255, green: 52/255, blue: 80/255))
                                            .font(Font.system(size: 25))
                                    })
                                    Text("回到主畫面")
                                        .foregroundColor(Color(red: 37/255, green: 52/255, blue: 80/255))
                                        .font(Font.system(size: 25))
                                        .onTapGesture {
                                            optionColors.isHome = true
                                            count = 0
                                            optionColors.score = 0
                                        }
                                    
                                }
                                .frame(width: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                            }
                        }
                        
                        
                    }
                }
                .onAppear{
                    riddles.shuffle()
                    optionColors.colors[0]  = Color.white
                    optionColors.colors[1]  = Color.white
                    optionColors.colors[2]  = Color.white
                    optionColors.colors[3]  = Color.white
                }
            }
        }
        else{
            StartView().environmentObject(optionColors)
        }
        
        
    }
}

struct StartView: View {
    @EnvironmentObject var optionColors: OptionColors
    
    var body: some View {
        ZStack{
            
            BackgroundView(doorOpacity: Double(1.0), doorX1: CGFloat(-80), doorX2: CGFloat(73))
            VStack{
                
                Text("燈謎")
                    .foregroundColor(Color(red: 252/255, green: 244/255, blue: 4/255))
                    .font(Font.system(size: 50))
                    .bold()
                    .offset(y: -60)
                
                Text("十連猜")
                    .foregroundColor(Color(red: 252/255, green: 244/255, blue: 4/255))
                    .font(Font.system(size: 50))
                    .bold()
                    .padding()
                    .offset(y: -60)
                Text("開始遊戲")
                    .foregroundColor(Color(red: 252/255, green: 244/255, blue: 4/255))
                    .font(Font.system(size: 26))
                    .padding()
                    .onTapGesture {
                        optionColors.isHome = false
                        print(optionColors.isHome)
                    }
                
            }
            
        }
        
    }
}

