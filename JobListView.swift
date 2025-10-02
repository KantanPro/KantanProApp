//
//  JobListView.swift
//  KantanProApp
//
//  Created by カンタンPro on 2025/10/02.
//

import SwiftUI

struct JobListView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("仕事リスト")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("受注案件の管理")
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
    JobListView()
}
