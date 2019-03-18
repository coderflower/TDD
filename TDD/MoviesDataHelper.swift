//
//  MoviesDataHelper.swift
//  TDD
//
//  Created by 花菜 on 2019/3/18.
//  Copyright © 2019 Coder.flower. All rights reserved.
//

import Foundation
struct MoviesDataHelper {
    static func getMovies() -> [Movie] {
        return [
            Movie(title: "疯狂动物城", genre: .animation),
            Movie(title: "神探蒲松龄", genre: .other),
            Movie(title: "精灵旅社", genre: .animation),
            Movie(title: "敢死队", genre: .action),
            Movie(title: "大人物", genre: .action),
            Movie(title: "一吻定情", genre: .other),
            Movie(title: "新喜剧之王", genre: .other),
            Movie(title: "云南虫谷", genre: .action),
            Movie(title: "海王", genre: .action),
            Movie(title: "反贪风暴", genre: .action)
        ]
    }
}
