//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by 이성원 on 2022/05/16.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
    let id: UUID
    // @Published : 새로운 값을 저장할 때 마다 바인딩 되어있는 UI가 자동으로 업데이트 됨
    @Published var content: String
    let insertDate: Date
    
    init(content:String, insertDate: Date = Date.now ){
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
