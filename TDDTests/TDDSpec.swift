//
//  TDDSpec.swift
//  TDDTests
//
//  Created by 花菜 on 2019/3/18.
//  Copyright © 2019 Coder.flower. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable import TDD
class TDDSpec: QuickSpec {
    override func spec() {
        var moviesViewController: MoviesViewController!
        describe("MoviesViewController") {
            beforeEach {
                moviesViewController = (UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! MoviesViewController)
                // 加载控制器的 view
                _ = moviesViewController.view
            }
            context("when controller's view is loaded", {
                it("numofRows in tableview section 0 shold be 10", closure: {
                    expect(moviesViewController.tableView.numberOfRows(inSection: 0)) == 10
                })
            })
        }
    }
}
