//
//  ComposeView.swift
//  SwiftUIMemo
//
//  Created by 이성원 on 2022/05/16.
//

import SwiftUI

struct ComposeView: View {
    @EnvironmentObject var store: MemoStore
    
    @Environment(\.dismiss) var dismiss
    
    @State private var content: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $content)
                    .padding()
            }
            .navigationTitle("new Memo")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarLeading)
                {
                    Button {
                        dismiss()
                    } label: {
                        Text("cancel")
                    }

                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing)
                {
                    Button {
                        store.insert(memo: content)
                        
                        dismiss()
                    } label: {
                        Text("save")
                    }

                }
            }
        }
    }
}

struct ComposeView_Previews: PreviewProvider {
    static var previews: some View {
        ComposeView()
            .environmentObject(MemoStore())
    }
}
