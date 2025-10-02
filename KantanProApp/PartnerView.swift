//
//  PartnerView.swift
//  KantanProApp
//
//  Created by カンタンPro on 2025/10/02.
//

import SwiftUI

struct PartnerView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("協力会社管理")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("協力会社情報の管理")
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
    PartnerView()
}
