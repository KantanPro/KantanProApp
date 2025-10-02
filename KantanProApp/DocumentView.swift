//
//  DocumentView.swift
//  KantanProApp
//
//  Created by カンタンPro on 2025/10/02.
//

import SwiftUI

struct DocumentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("伝票処理")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("受注書・請求書の管理")
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
    DocumentView()
}
