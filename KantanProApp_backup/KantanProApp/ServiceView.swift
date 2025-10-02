//
//  ServiceView.swift
//  KantanProApp
//
//  Created by カンタンPro on 2025/10/02.
//

import SwiftUI

struct ServiceView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("サービス管理")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("サービス・商品の管理")
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
    ServiceView()
}
