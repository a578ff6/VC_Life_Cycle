//
//  SecondViewController.swift
//  VC_Life_Cycle
//
//  Created by 曹家瑋 on 2023/9/30.
//

import UIKit

class SecondViewController: UIViewController {

    // loadView()是在視圖控制器需要其視圖時被呼叫，用於創建或載入視圖。不要直接呼叫它。
    override func loadView() {
        // 調用父類的loadView()以確保視圖的正確載入或創建
        super.loadView()
        // 會在loadView()被呼叫的時候print出
        print(self, #function)
    }

    // viewDidLoad()方法在視圖載入記憶體後被呼叫，通常用於進行一次性的初始化
    override func viewDidLoad() {
        // 調用父類的viewDidLoad()確保正確的初始化
        super.viewDidLoad()
        // 會在viewDidLoad()被呼叫的時候print出
        print(self, #function)

    }
    
    // viewWillAppear(_:) 在視圖即將出現在螢幕前被呼叫，適合進行即時的更新或設定
    override func viewWillAppear(_ animated: Bool) {
        // 調用父類的viewWillAppear(_:)確保視圖即將出現的相關工作都完成
        super.viewWillAppear(animated)
        // 會在viewWillAppear(_:)被呼叫的時候print出
        print(self, #function)
    }
    
    // viewDidAppear(_:) 在視圖已經完全出現在螢幕後被呼叫，適合進行可能耗時的工作，如動畫或數據請求
    override func viewDidAppear(_ animated: Bool) {
        // 調用父類的viewDidAppear(_:)確保視圖已經出現的相關工作都完成
        super.viewDidAppear(animated)
        // 會在viewDidAppear(_:)被呼叫的時候print出
        print(self, #function)
    }
    
    // MARK: - viewWillDisappear、 viewDidDisappear
    // viewWillDisappear(_:) 在畫面即將從螢幕上消失前被呼叫，這是一個通知視圖控制器即將移除或被覆蓋的方法。
    // 適用於撤銷視圖中可能出現的即時變更或停止可能正在進行的動作（如動畫或音頻播放）。
    override func viewWillDisappear(_ animated: Bool) {
        // 調用父類的viewWillDisappear(_:)確保視圖即將消失的相關工作都完成
        super.viewWillDisappear(animated)
        print(self, #function)
    }
    
    // viewDidDisappear(_:) 當畫面已從螢幕上完全消失後被呼叫。
    // 這是一個通知視圖控制器其視圖已被移除或已完全被覆蓋的方法。
    // 適用於清理任何在viewWillDisappear(_:)時可能還沒有被清理的資源或狀態。
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(self, #function)
    }

}
