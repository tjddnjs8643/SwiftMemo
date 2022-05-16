//
//  MainListView.swift
//  SwiftUIMemo
//
//  Created by 이성원 on 2022/05/16.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        NavigationView {
            List(store.list){ memo in
                VStack(alignment: .leading) {
                    Text(memo.content)
                        .font(.body)
                        .foregroundColor(.brown)
                        .lineLimit(1)
                    
                    Text(memo.insertDate, style: .date)
                        .font(.caption)
                        .foregroundColor(.mint)
                }
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
            
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}
