//
//  ReportView.swift
//  KantanProApp
//
//  Created by カンタンPro on 2025/10/02.
//

import SwiftUI

struct ReportView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("レポート")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("売上・進捗の分析")
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Text("開発中...")
                    .font(.body)
                    .foregroundColor(.secondary)
            }
            .padding()
        }
    }
}

#Preview {
    ReportView()
}
