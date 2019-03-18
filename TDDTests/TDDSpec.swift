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
            
            context("TableView", {
                var cell: UITableViewCell!
                beforeEach {
                    cell = moviesViewController.tableView(moviesViewController.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
                }
                it("should show title and genre", closure: {
                    expect(cell.textLabel?.text) == "疯狂动物城"
                    expect(cell.detailTextLabel?.text) == "animation"
                })
            })
        }
    }
}
