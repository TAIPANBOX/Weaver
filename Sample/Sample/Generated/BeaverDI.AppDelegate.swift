/// This file is generated by BeaverDI
/// DO NOT EDIT!

import BeaverDI

// MARK: - AppDelegate

final class AppDelegateDependencyContainer: DependencyContainer {

    init() {
        super.init()
    }

    override func registerDependencies(in store: DependencyStore) {
        
        store.register(ViewController.self, scope: .container, builder: { dependencies in
            return ViewController.makeViewController(injecting: dependencies)
        })
        store.register(AppDelegate.self, scope: .graph, builder: { dependencies in
            return self.appDelegateCustomRef(dependencies)
        })
    }
}

protocol AppDelegateDependencyResolver {
    
    var viewController: ViewController { get }
    var appDelegate: AppDelegate { get }
}

extension AppDelegateDependencyContainer: AppDelegateDependencyResolver {
    
    var viewController: ViewController {
        return resolve(ViewController.self)
    }
    var appDelegate: AppDelegate {
        return resolve(AppDelegate.self)
    }
}

