//
//  Movie.swift
//  TDD
//
//  Created by 花菜 on 2019/3/18.
//  Copyright © 2019 Coder.flower. All rights reserved.
//

import Foundation
struct Movie {
    /// 电影名称
    let title: String
    /// 电影类型
    let genre: Genre
    enum Genre: String {
        /// 动画
        case animation
        /// 动作
        case action
        /// 其他
        case other
    }
}
