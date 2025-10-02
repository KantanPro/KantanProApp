//
//  CustomerView.swift
//  KantanProApp
//
//  Created by カンタンPro on 2025/10/02.
//

import SwiftUI

struct CustomerView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("顧客管理")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("顧客情報の管理")
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
    CustomerView()
}
