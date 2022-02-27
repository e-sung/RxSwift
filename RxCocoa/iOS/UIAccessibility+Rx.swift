//
//  UIAccessibility+Rx.swift
//  RxCocoa
//
//  Created by 류성두 on 2022/02/27.
//  Copyright © 2022 Krunoslav Zaher. All rights reserved.
//

#if os(iOS)

import UIKit
import RxSwift

extension Reactive where Base: NSObject {
    
    /// Reactive wrapper for `accessibilityActivate` 
    public var accessibilityActivate: ControlEvent<Bool> {
        let source = base.rx
            .methodInvoked(#selector(NSObject.accessibilityActivate))
            .map { try castOrThrow(Bool.self, $0) }
        
        return ControlEvent(events: source)
    }
    
    /// Reactive wrapper for `accessibilityIncrement` 
    public var accessibilityIncrement: ControlEvent<Void> {
        let source = base.rx
            .methodInvoked(#selector(NSObject.accessibilityIncrement))
            .map { _ in Void() }
        return ControlEvent(events: source)
    }  

    /// Reactive wrapper for `accessibilityDecrement` 
    public var accessibilityDecrement: ControlEvent<Void> {
        let source = base.rx
            .methodInvoked(#selector(NSObject.accessibilityDecrement))
            .map { _ in Void() }
        return ControlEvent(events: source)
    }
    
    /// Reactive wrapper for `accessibilityPerformEscape` 
    public var accessibilityPerformEscape: ControlEvent<Bool> {
        let source = base.rx
            .methodInvoked(#selector(NSObject.accessibilityPerformEscape))
            .map { try castOrThrow(Bool.self, $0) }
        
        return ControlEvent(events: source)
    }
    
    /// Reactive wrapper for `accessibilityPerformMagicTap` 
    public var accessibilityPerformMagicTap: ControlEvent<Bool> {
        let source = base.rx
            .methodInvoked(#selector(NSObject.accessibilityPerformMagicTap))
            .map { try castOrThrow(Bool.self, $0) }
        
        return ControlEvent(events: source)
    }
}

#endif
