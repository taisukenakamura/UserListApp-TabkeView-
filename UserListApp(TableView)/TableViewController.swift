//
//  TableViewController.swift
//  UserListApp(TableView)
//
//  Created by 中村泰輔 on 2019/08/09.
//  Copyright © 2019 icannot.t.n. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var members : [UserData] = [
        UserData(name: "永井 優", info: "音楽が好き。ビジュアル系バンドが好きでバンドを組んでギターを弾いたりした。最近の趣味はバイクに乗ることとキックボクシング。"),
        UserData(name: "小野 勇輔", info: "スポーツをすることと釣りが好きです！サッカーと水泳をやっていました"),
        UserData(name: "豊岡 正紘", info: "バックカントリースキーしてみたい！美味しいものたくさん食べたい！スキューバダイビングしたい！深夜特急読みながら同じところ旅したい！"),
        UserData(name: "分目 祐太", info: "卓球とランニングが好きです。世界のいろいろな国に行ってみたいです。最近は、フィリピンに行って大好きになりました。"),
        UserData(name: "金田 祐作", info: "小学校二年生から高校3年生までサッカーをしていて、今も趣味でフットサルをしています。最近はキックボクシングジムに通い始めましたが、細身になりたいので筋トレはあまりしないようにしています。ライブハウスに音楽を聞きに行くことが好きで、5個上の兄と一緒にライブやフェスに行くことがあります。"),
        UserData(name: "甲斐崎 香", info: "あだ名はかおりん。18歳 女。好きなことは旅行と遊び友達と遊ぶことが好きです!!カラオケとかめっちゃ行きますwww"),
        UserData(name: "志賀 大河", info: "バレーボール、サッカー、バスケと運動が全般的に好きです！海外旅行などに最近ハマり、特にほかのアジア圏の国への旅行をいっぱいしてみたいです！あと料理も好きです！"),
        UserData(name: "津國 由莉子", info: "あだ名はゆりちゃん。22歳女。好きなことはピアノと麻雀とバレエ。基本的にインドアで引きこもって家でゲームをしていることが多い。夜になると街を徘徊することも多く、その時はお酒を大量に浴びている。次の日に、飲み過ぎだと後悔するけど、繰り返してしまうおバカさんです。"),
        UserData(name: "中村泰輔", info: "サッカー、カラオケ、旅行、食事、飲酒等基本楽しければなんでもいい。ポンコツという自負を持っている"),
        UserData(name: "堀田 真", info: "エレキベースが趣味。高校1年からロックを中心に音楽活動を始める。初めはASIAN KUNG - FU GENERATIONや東京事変などを好みとしていた。大学からは一変し、フュージョンを中心に演奏活動をする。Pat Metheny Group や スナーキー・パピーが好き。"),
        UserData(name: "田内翔太郎", info: "普段は、読書か散歩かアニメを見て過ごしてます！あと最近は筋トレにもハマりかけています"),
        UserData(name: "福沢貴一", info: "サッカー好きの脳筋です。今の趣味はバイトすること週6でみんな大好きcoffeemafiaで働いてますよ!いつでもおいで"),
        UserData(name: "平田奈那", info: "あだなは、はち(本名:なな)で、東京にくるたびにハチ公に挨拶しています。弾丸ひとり旅など、突然思い立ったことをやるのが好きです。東京生活わくわくしています〜"),
        UserData(name: "吉澤優衣", info: "ゲームが大好き。特にドラクエをこよなく愛しており、2018年の夏休みは約200時間をドラクエに費やした。他にもピアノや海外旅行や読書など様々な趣味がある。")
    ]
    
    
    var selectedUserName : UserData?
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  14
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)

        cell.textLabel?.text = members[indexPath.row].name

        return cell
    }
    

    
    override func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath){
        selectedUserName = members[indexPath.row]
        
        performSegue(withIdentifier: "showInformation", sender: nil)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard segue.identifier == "showInformation", let udv = segue.destination as? UserDataViewController else{ return }
        
        
          udv.user =  selectedUserName
    }
}

