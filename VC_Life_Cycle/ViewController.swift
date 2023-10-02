//
//  ViewController.swift
//  VC_Life_Cycle
//
//  Created by 曹家瑋 on 2023/9/29.
//

import UIKit

class ViewController: UIViewController {
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










/*
 1. **loadView()**:
    - 此方法被用來創建或載入視圖控制器的視圖，只有當該視圖是從程式碼創建的時候才需要覆寫此方法。
    - 若您使用 storyboard 或 xib 來創建視圖，則不需要覆寫此方法。
    - 執行此方法後，該視圖控制器的視圖會被加載到記憶體中。

 2. **viewDidLoad()**:
    - 這是視圖控制器的生命週期中的一個重要時刻，當視圖已經被加載到記憶體中（但還未顯示）時，此方法會被調用。
    - 此時應執行所有基於視圖的初始化操作，例如設置界面元素、添加手勢識別等。

 3. **viewWillAppear(_:)**:
    - 在視圖控制器的視圖被加入到視窗並即將顯示在螢幕上之前，這個方法會被調用。
    - 這是執行那些每次視圖即將顯示時都需要執行的操作的好地方，例如更新顯示的數據或隱藏/顯示導航欄。

 4. **viewDidAppear(_:)**:
    - 當視圖控制器的視圖已經完全轉換到螢幕上後，此方法會被調用。
    - 這是執行需要在視圖完全顯示後執行的操作的好地方，例如開始動畫或開始加載數據。

 */









/*
class ViewController: UIViewController {
    
    // 創建一個Logger對象，用於輸出日誌
    let log = Logger()

    // viewDidLoad()方法在視圖載入記憶體後被呼叫，通常用於進行一次性的初始化
    override func viewDidLoad() {
        // 調用父類的viewDidLoad()確保正確的初始化
        super.viewDidLoad()
        
        // 會在viewDidLoad()被呼叫的時候，把“ViewController - View Did Load”這段文字印到控制台。
        log.debug("ViewController - View Did Load")
    }
    
    // viewWillAppear(_:) 在視圖即將出現在螢幕前被呼叫，適合進行即時的更新或設定
    override func viewWillAppear(_ animated: Bool) {
        // 調用父類的viewWillAppear(_:)確保視圖即將出現的相關工作都完成
        super.viewWillAppear(animated)
        
        // 會在viewWillAppear(_:)被呼叫的時候，把“ViewController = View Will Appear”這段文字印到控制台
        log.debug("ViewController - View Will Appear")
    }
    
    // viewDidAppear(_:) 在視圖已經完全出現在螢幕後被呼叫，適合進行可能耗時的工作，如動畫或數據請求
    override func viewDidAppear(_ animated: Bool) {
        // 調用父類的viewDidAppear(_:)確保視圖已經出現的相關工作都完成
        super.viewDidAppear(animated)
        
        // 會在viewDidAppear(_:)被呼叫的時候，把“ViewController = View Did Appear”這段文字印到控制台
        log.debug("ViewController - View Did Appear")
    }
    
}

*/
