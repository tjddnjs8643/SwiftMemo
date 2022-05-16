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
                MemoCell(memo: memo)
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

