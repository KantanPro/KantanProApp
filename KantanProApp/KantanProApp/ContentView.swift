//
//  ContentView.swift
//  KantanProApp
//
//  Created by カンタンPro on 2025/10/02.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            // 仕事リストタブ
            JobListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("仕事リスト")
                }
                .tag(0)
            
            // 伝票処理タブ
            DocumentView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("伝票処理")
                }
                .tag(1)
            
            // 顧客タブ
            CustomerView()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("顧客")
                }
                .tag(2)
            
            // サービスタブ
            ServiceView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("サービス")
                }
                .tag(3)
            
            // 協力会社タブ
            PartnerView()
                .tabItem {
                    Image(systemName: "building.2")
                    Text("協力会社")
                }
                .tag(4)
            
            // レポートタブ
            ReportView()
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("レポート")
                }
                .tag(5)
        }
        .frame(minWidth: 1200, minHeight: 800)
    }
}

#Preview {
    ContentView()
}
