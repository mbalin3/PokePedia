// MARK: - Mocks generated from file: PokemonVault/AppCache.swift at 2019-05-15 06:33:48 +0000

//
//  AppCache.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/25.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Cuckoo
@testable import PokemonVault

import Foundation

class MockAppCache: AppCache, Cuckoo.ClassMock {
    typealias MocksType = AppCache
    typealias Stubbing = __StubbingProxy_AppCache
    typealias Verification = __VerificationProxy_AppCache

    private var __defaultImplStub: AppCache?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    func enableDefaultImplementation(_ stub: AppCache) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "fetchCachedObject", "returnSignature": " -> AnyObject?", "fullyQualifiedName": "fetchCachedObject(for: AppCacheComponent) -> AnyObject?", "parameterSignature": "for component: AppCacheComponent", "parameterSignatureWithoutNames": "component: AppCacheComponent", "inputTypes": "AppCacheComponent", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "component", "call": "for: component", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("for"), name: "component", type: "AppCacheComponent", range: CountableRange(429..<461), nameRange: CountableRange(429..<432))], "returnType": "Optional<AnyObject>", "isOptional": false, "escapingParameterNames": "component", "stubFunction": "Cuckoo.ClassStubFunction"]
     override func fetchCachedObject(for component: AppCacheComponent)  -> AnyObject? {
        
            return cuckoo_manager.call("fetchCachedObject(for: AppCacheComponent) -> AnyObject?",
                parameters: (component),
                escapingParameters: (component),
                superclassCall:
                    
                    super.fetchCachedObject(for: component)
                    ,
                defaultCall: __defaultImplStub!.fetchCachedObject(for: component))
        
    }
    
    // ["name": "setCacheObject", "returnSignature": "", "fullyQualifiedName": "setCacheObject(_: AnyObject, for: AppCacheComponent)", "parameterSignature": "_ objectCache: AnyObject, for component: AppCacheComponent", "parameterSignatureWithoutNames": "objectCache: AnyObject, component: AppCacheComponent", "inputTypes": "AnyObject, AppCacheComponent", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "objectCache, component", "call": "objectCache, for: component", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "objectCache", type: "AnyObject", range: CountableRange(612..<636), nameRange: CountableRange(0..<0)), CuckooGeneratorFramework.MethodParameter(label: Optional("for"), name: "component", type: "AppCacheComponent", range: CountableRange(638..<670), nameRange: CountableRange(638..<641))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "objectCache, component", "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func setCacheObject(_ objectCache: AnyObject, for component: AppCacheComponent)  {
        
            return cuckoo_manager.call("setCacheObject(_: AnyObject, for: AppCacheComponent)",
                parameters: (objectCache, component),
                escapingParameters: (objectCache, component),
                superclassCall:
                    
                    super.setCacheObject(objectCache, for: component)
                    ,
                defaultCall: __defaultImplStub!.setCacheObject(objectCache, for: component))
        
    }
    
    // ["name": "invalidateCache", "returnSignature": "", "fullyQualifiedName": "invalidateCache(for: AppCacheComponent)", "parameterSignature": "for component: AppCacheComponent", "parameterSignatureWithoutNames": "component: AppCacheComponent", "inputTypes": "AppCacheComponent", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "component", "call": "for: component", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("for"), name: "component", type: "AppCacheComponent", range: CountableRange(768..<800), nameRange: CountableRange(768..<771))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "component", "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func invalidateCache(for component: AppCacheComponent)  {
        
            return cuckoo_manager.call("invalidateCache(for: AppCacheComponent)",
                parameters: (component),
                escapingParameters: (component),
                superclassCall:
                    
                    super.invalidateCache(for: component)
                    ,
                defaultCall: __defaultImplStub!.invalidateCache(for: component))
        
    }
    
    // ["name": "invalidateAllCache", "returnSignature": "", "fullyQualifiedName": "invalidateAllCache()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func invalidateAllCache()  {
        
            return cuckoo_manager.call("invalidateAllCache()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    super.invalidateAllCache()
                    ,
                defaultCall: __defaultImplStub!.invalidateAllCache())
        
    }
    

	struct __StubbingProxy_AppCache: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchCachedObject<M1: Cuckoo.Matchable>(for component: M1) -> Cuckoo.ClassStubFunction<(AppCacheComponent), Optional<AnyObject>> where M1.MatchedType == AppCacheComponent {
	        let matchers: [Cuckoo.ParameterMatcher<(AppCacheComponent)>] = [wrap(matchable: component) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAppCache.self, method: "fetchCachedObject(for: AppCacheComponent) -> AnyObject?", parameterMatchers: matchers))
	    }
	    
	    func setCacheObject<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ objectCache: M1, for component: M2) -> Cuckoo.ClassStubNoReturnFunction<(AnyObject, AppCacheComponent)> where M1.MatchedType == AnyObject, M2.MatchedType == AppCacheComponent {
	        let matchers: [Cuckoo.ParameterMatcher<(AnyObject, AppCacheComponent)>] = [wrap(matchable: objectCache) { $0.0 }, wrap(matchable: component) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAppCache.self, method: "setCacheObject(_: AnyObject, for: AppCacheComponent)", parameterMatchers: matchers))
	    }
	    
	    func invalidateCache<M1: Cuckoo.Matchable>(for component: M1) -> Cuckoo.ClassStubNoReturnFunction<(AppCacheComponent)> where M1.MatchedType == AppCacheComponent {
	        let matchers: [Cuckoo.ParameterMatcher<(AppCacheComponent)>] = [wrap(matchable: component) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockAppCache.self, method: "invalidateCache(for: AppCacheComponent)", parameterMatchers: matchers))
	    }
	    
	    func invalidateAllCache() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockAppCache.self, method: "invalidateAllCache()", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_AppCache: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchCachedObject<M1: Cuckoo.Matchable>(for component: M1) -> Cuckoo.__DoNotUse<Optional<AnyObject>> where M1.MatchedType == AppCacheComponent {
	        let matchers: [Cuckoo.ParameterMatcher<(AppCacheComponent)>] = [wrap(matchable: component) { $0 }]
	        return cuckoo_manager.verify("fetchCachedObject(for: AppCacheComponent) -> AnyObject?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setCacheObject<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ objectCache: M1, for component: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == AnyObject, M2.MatchedType == AppCacheComponent {
	        let matchers: [Cuckoo.ParameterMatcher<(AnyObject, AppCacheComponent)>] = [wrap(matchable: objectCache) { $0.0 }, wrap(matchable: component) { $0.1 }]
	        return cuckoo_manager.verify("setCacheObject(_: AnyObject, for: AppCacheComponent)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func invalidateCache<M1: Cuckoo.Matchable>(for component: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == AppCacheComponent {
	        let matchers: [Cuckoo.ParameterMatcher<(AppCacheComponent)>] = [wrap(matchable: component) { $0 }]
	        return cuckoo_manager.verify("invalidateCache(for: AppCacheComponent)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func invalidateAllCache() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("invalidateAllCache()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class AppCacheStub: AppCache {
    

    

    
     override func fetchCachedObject(for component: AppCacheComponent)  -> AnyObject? {
        return DefaultValueRegistry.defaultValue(for: Optional<AnyObject>.self)
    }
    
     override func setCacheObject(_ objectCache: AnyObject, for component: AppCacheComponent)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func invalidateCache(for component: AppCacheComponent)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     override func invalidateAllCache()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: PokemonVault/BaseViewModelDelegate.swift at 2019-05-15 06:33:48 +0000

//
//  BaseViewModelDelegate.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/29.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Cuckoo
@testable import PokemonVault

import Foundation

class MockBaseViewModelDelegate: BaseViewModelDelegate, Cuckoo.ProtocolMock {
    typealias MocksType = BaseViewModelDelegate
    typealias Stubbing = __StubbingProxy_BaseViewModelDelegate
    typealias Verification = __VerificationProxy_BaseViewModelDelegate

    private var __defaultImplStub: BaseViewModelDelegate?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    func enableDefaultImplementation(_ stub: BaseViewModelDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "refreshViewContents", "returnSignature": "", "fullyQualifiedName": "refreshViewContents()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func refreshViewContents()  {
        
            return cuckoo_manager.call("refreshViewContents()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.refreshViewContents())
        
    }
    
    // ["name": "showError", "returnSignature": "", "fullyQualifiedName": "showError(errorMessage: String)", "parameterSignature": "errorMessage: String", "parameterSignatureWithoutNames": "errorMessage: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "errorMessage", "call": "errorMessage: errorMessage", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("errorMessage"), name: "errorMessage", type: "String", range: CountableRange(268..<288), nameRange: CountableRange(268..<280))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "errorMessage", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showError(errorMessage: String)  {
        
            return cuckoo_manager.call("showError(errorMessage: String)",
                parameters: (errorMessage),
                escapingParameters: (errorMessage),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showError(errorMessage: errorMessage))
        
    }
    

	struct __StubbingProxy_BaseViewModelDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func refreshViewContents() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockBaseViewModelDelegate.self, method: "refreshViewContents()", parameterMatchers: matchers))
	    }
	    
	    func showError<M1: Cuckoo.Matchable>(errorMessage: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: errorMessage) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockBaseViewModelDelegate.self, method: "showError(errorMessage: String)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_BaseViewModelDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func refreshViewContents() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("refreshViewContents()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showError<M1: Cuckoo.Matchable>(errorMessage: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: errorMessage) { $0 }]
	        return cuckoo_manager.verify("showError(errorMessage: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class BaseViewModelDelegateStub: BaseViewModelDelegate {
    

    

    
     func refreshViewContents()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showError(errorMessage: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: PokemonVault/NetworkSession.swift at 2019-05-15 06:33:48 +0000

//
//  NetworkSession.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/20.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Cuckoo
@testable import PokemonVault

import Foundation

class MockNetworkSession: NetworkSession, Cuckoo.ProtocolMock {
    typealias MocksType = NetworkSession
    typealias Stubbing = __StubbingProxy_NetworkSession
    typealias Verification = __VerificationProxy_NetworkSession

    private var __defaultImplStub: NetworkSession?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    func enableDefaultImplementation(_ stub: NetworkSession) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "fetchData", "returnSignature": "", "fullyQualifiedName": "fetchData(from: URL, completionHandler: @escaping (_ data: Data?, _ error: NSError?) -> Void)", "parameterSignature": "from url: URL, completionHandler: @escaping (_ data: Data?, _ error: NSError?) -> Void", "parameterSignatureWithoutNames": "url: URL, completionHandler: @escaping (_ data: Data?, _ error: NSError?) -> Void", "inputTypes": "URL, (_ data: Data?, _ error: NSError?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "url, completionHandler", "call": "from: url, completionHandler: completionHandler", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("from"), name: "url", type: "URL", range: CountableRange(216..<229), nameRange: CountableRange(216..<220)), CuckooGeneratorFramework.MethodParameter(label: Optional("completionHandler"), name: "completionHandler", type: "@escaping (_ data: Data?, _ error: NSError?) -> Void", range: CountableRange(250..<321), nameRange: CountableRange(250..<267))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "url, completionHandler", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchData(from url: URL, completionHandler: @escaping (_ data: Data?, _ error: NSError?) -> Void)  {
        
            return cuckoo_manager.call("fetchData(from: URL, completionHandler: @escaping (_ data: Data?, _ error: NSError?) -> Void)",
                parameters: (url, completionHandler),
                escapingParameters: (url, completionHandler),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchData(from: url, completionHandler: completionHandler))
        
    }
    

	struct __StubbingProxy_NetworkSession: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(from url: M1, completionHandler: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(URL, (_ data: Data?, _ error: NSError?) -> Void)> where M1.MatchedType == URL, M2.MatchedType == (_ data: Data?, _ error: NSError?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, (_ data: Data?, _ error: NSError?) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: completionHandler) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockNetworkSession.self, method: "fetchData(from: URL, completionHandler: @escaping (_ data: Data?, _ error: NSError?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_NetworkSession: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(from url: M1, completionHandler: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == URL, M2.MatchedType == (_ data: Data?, _ error: NSError?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, (_ data: Data?, _ error: NSError?) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: completionHandler) { $0.1 }]
	        return cuckoo_manager.verify("fetchData(from: URL, completionHandler: @escaping (_ data: Data?, _ error: NSError?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class NetworkSessionStub: NetworkSession {
    

    

    
     func fetchData(from url: URL, completionHandler: @escaping (_ data: Data?, _ error: NSError?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: PokemonVault/PokemonDetailsBoundary.swift at 2019-05-15 06:33:48 +0000

//
//  PokemonDetailsBoundary.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/26.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Cuckoo
@testable import PokemonVault

import Foundation

class MockPokemonDetailsBoundary: PokemonDetailsBoundary, Cuckoo.ProtocolMock {
    typealias MocksType = PokemonDetailsBoundary
    typealias Stubbing = __StubbingProxy_PokemonDetailsBoundary
    typealias Verification = __VerificationProxy_PokemonDetailsBoundary

    private var __defaultImplStub: PokemonDetailsBoundary?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    func enableDefaultImplementation(_ stub: PokemonDetailsBoundary) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
     var delegate: PokemonDetailsInteractorDelegate? {
        get {
            return cuckoo_manager.getter("delegate",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.delegate)
        }
        
        set {
            cuckoo_manager.setter("delegate",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.delegate = newValue)
        }
        
    }
    

    

    
    // ["name": "fetchPokemonDetails", "returnSignature": "", "fullyQualifiedName": "fetchPokemonDetails(fromUrl: String)", "parameterSignature": "fromUrl: String", "parameterSignatureWithoutNames": "fromUrl: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "fromUrl", "call": "fromUrl: fromUrl", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("fromUrl"), name: "fromUrl", type: "String", range: CountableRange(314..<329), nameRange: CountableRange(314..<321))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "fromUrl", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchPokemonDetails(fromUrl: String)  {
        
            return cuckoo_manager.call("fetchPokemonDetails(fromUrl: String)",
                parameters: (fromUrl),
                escapingParameters: (fromUrl),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchPokemonDetails(fromUrl: fromUrl))
        
    }
    

	struct __StubbingProxy_PokemonDetailsBoundary: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var delegate: Cuckoo.ProtocolToBeStubbedProperty<MockPokemonDetailsBoundary, PokemonDetailsInteractorDelegate?> {
	        return .init(manager: cuckoo_manager, name: "delegate")
	    }
	    
	    
	    func fetchPokemonDetails<M1: Cuckoo.Matchable>(fromUrl: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: fromUrl) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonDetailsBoundary.self, method: "fetchPokemonDetails(fromUrl: String)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_PokemonDetailsBoundary: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var delegate: Cuckoo.VerifyProperty<PokemonDetailsInteractorDelegate?> {
	        return .init(manager: cuckoo_manager, name: "delegate", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func fetchPokemonDetails<M1: Cuckoo.Matchable>(fromUrl: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: fromUrl) { $0 }]
	        return cuckoo_manager.verify("fetchPokemonDetails(fromUrl: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class PokemonDetailsBoundaryStub: PokemonDetailsBoundary {
    
     var delegate: PokemonDetailsInteractorDelegate? {
        get {
            return DefaultValueRegistry.defaultValue(for: (PokemonDetailsInteractorDelegate?).self)
        }
        
        set { }
        
    }
    

    

    
     func fetchPokemonDetails(fromUrl: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: PokemonVault/PokemonDetailsInteractorDelegate.swift at 2019-05-15 06:33:48 +0000

//
//  PokemonDetailsInteractorDelegate.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/05/08.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Cuckoo
@testable import PokemonVault

import Foundation

class MockPokemonDetailsInteractorDelegate: PokemonDetailsInteractorDelegate, Cuckoo.ProtocolMock {
    typealias MocksType = PokemonDetailsInteractorDelegate
    typealias Stubbing = __StubbingProxy_PokemonDetailsInteractorDelegate
    typealias Verification = __VerificationProxy_PokemonDetailsInteractorDelegate

    private var __defaultImplStub: PokemonDetailsInteractorDelegate?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    func enableDefaultImplementation(_ stub: PokemonDetailsInteractorDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "fetchedPokemonDetailsWithSuccess", "returnSignature": "", "fullyQualifiedName": "fetchedPokemonDetailsWithSuccess(successResponse: PokemonDetailsModel?)", "parameterSignature": "successResponse: PokemonDetailsModel?", "parameterSignatureWithoutNames": "successResponse: PokemonDetailsModel?", "inputTypes": "PokemonDetailsModel?", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "successResponse", "call": "successResponse: successResponse", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("successResponse"), name: "successResponse", type: "PokemonDetailsModel?", range: CountableRange(282..<319), nameRange: CountableRange(282..<297))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "successResponse", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchedPokemonDetailsWithSuccess(successResponse: PokemonDetailsModel?)  {
        
            return cuckoo_manager.call("fetchedPokemonDetailsWithSuccess(successResponse: PokemonDetailsModel?)",
                parameters: (successResponse),
                escapingParameters: (successResponse),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchedPokemonDetailsWithSuccess(successResponse: successResponse))
        
    }
    
    // ["name": "fetchedPokemonDetailsWithFailure", "returnSignature": "", "fullyQualifiedName": "fetchedPokemonDetailsWithFailure(error: NSError?)", "parameterSignature": "error: NSError?", "parameterSignatureWithoutNames": "error: NSError?", "inputTypes": "NSError?", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "error: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("error"), name: "error", type: "NSError?", range: CountableRange(363..<378), nameRange: CountableRange(363..<368))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "error", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchedPokemonDetailsWithFailure(error: NSError?)  {
        
            return cuckoo_manager.call("fetchedPokemonDetailsWithFailure(error: NSError?)",
                parameters: (error),
                escapingParameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchedPokemonDetailsWithFailure(error: error))
        
    }
    

	struct __StubbingProxy_PokemonDetailsInteractorDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchedPokemonDetailsWithSuccess<M1: Cuckoo.Matchable>(successResponse: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(PokemonDetailsModel?)> where M1.MatchedType == PokemonDetailsModel? {
	        let matchers: [Cuckoo.ParameterMatcher<(PokemonDetailsModel?)>] = [wrap(matchable: successResponse) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonDetailsInteractorDelegate.self, method: "fetchedPokemonDetailsWithSuccess(successResponse: PokemonDetailsModel?)", parameterMatchers: matchers))
	    }
	    
	    func fetchedPokemonDetailsWithFailure<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(NSError?)> where M1.MatchedType == NSError? {
	        let matchers: [Cuckoo.ParameterMatcher<(NSError?)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonDetailsInteractorDelegate.self, method: "fetchedPokemonDetailsWithFailure(error: NSError?)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_PokemonDetailsInteractorDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchedPokemonDetailsWithSuccess<M1: Cuckoo.Matchable>(successResponse: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == PokemonDetailsModel? {
	        let matchers: [Cuckoo.ParameterMatcher<(PokemonDetailsModel?)>] = [wrap(matchable: successResponse) { $0 }]
	        return cuckoo_manager.verify("fetchedPokemonDetailsWithSuccess(successResponse: PokemonDetailsModel?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func fetchedPokemonDetailsWithFailure<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == NSError? {
	        let matchers: [Cuckoo.ParameterMatcher<(NSError?)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("fetchedPokemonDetailsWithFailure(error: NSError?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class PokemonDetailsInteractorDelegateStub: PokemonDetailsInteractorDelegate {
    

    

    
     func fetchedPokemonDetailsWithSuccess(successResponse: PokemonDetailsModel?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func fetchedPokemonDetailsWithFailure(error: NSError?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: PokemonVault/PokemonListBoundary.swift at 2019-05-15 06:33:48 +0000

//
//  PokemonListBoundary.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/19.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Cuckoo
@testable import PokemonVault

import Foundation

class MockPokemonListBoundary: PokemonListBoundary, Cuckoo.ProtocolMock {
    typealias MocksType = PokemonListBoundary
    typealias Stubbing = __StubbingProxy_PokemonListBoundary
    typealias Verification = __VerificationProxy_PokemonListBoundary

    private var __defaultImplStub: PokemonListBoundary?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    func enableDefaultImplementation(_ stub: PokemonListBoundary) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    
     var delegate: PokemonListInteractorDelegate? {
        get {
            return cuckoo_manager.getter("delegate",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.delegate)
        }
        
        set {
            cuckoo_manager.setter("delegate",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.delegate = newValue)
        }
        
    }
    

    

    
    // ["name": "fetchPokemonList", "returnSignature": "", "fullyQualifiedName": "fetchPokemonList(numberOfPokemons: Int)", "parameterSignature": "numberOfPokemons: Int", "parameterSignatureWithoutNames": "numberOfPokemons: Int", "inputTypes": "Int", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "numberOfPokemons", "call": "numberOfPokemons: numberOfPokemons", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("numberOfPokemons"), name: "numberOfPokemons", type: "Int", range: CountableRange(299..<320), nameRange: CountableRange(299..<315))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "numberOfPokemons", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchPokemonList(numberOfPokemons: Int)  {
        
            return cuckoo_manager.call("fetchPokemonList(numberOfPokemons: Int)",
                parameters: (numberOfPokemons),
                escapingParameters: (numberOfPokemons),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchPokemonList(numberOfPokemons: numberOfPokemons))
        
    }
    

	struct __StubbingProxy_PokemonListBoundary: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var delegate: Cuckoo.ProtocolToBeStubbedProperty<MockPokemonListBoundary, PokemonListInteractorDelegate?> {
	        return .init(manager: cuckoo_manager, name: "delegate")
	    }
	    
	    
	    func fetchPokemonList<M1: Cuckoo.Matchable>(numberOfPokemons: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: numberOfPokemons) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonListBoundary.self, method: "fetchPokemonList(numberOfPokemons: Int)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_PokemonListBoundary: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var delegate: Cuckoo.VerifyProperty<PokemonListInteractorDelegate?> {
	        return .init(manager: cuckoo_manager, name: "delegate", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func fetchPokemonList<M1: Cuckoo.Matchable>(numberOfPokemons: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: numberOfPokemons) { $0 }]
	        return cuckoo_manager.verify("fetchPokemonList(numberOfPokemons: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class PokemonListBoundaryStub: PokemonListBoundary {
    
     var delegate: PokemonListInteractorDelegate? {
        get {
            return DefaultValueRegistry.defaultValue(for: (PokemonListInteractorDelegate?).self)
        }
        
        set { }
        
    }
    

    

    
     func fetchPokemonList(numberOfPokemons: Int)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: PokemonVault/PokemonListInteractorDelegate.swift at 2019-05-15 06:33:48 +0000

//
//  PokemonListInteractorDelegate.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/05/11.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Cuckoo
@testable import PokemonVault

import Foundation

class MockPokemonListInteractorDelegate: PokemonListInteractorDelegate, Cuckoo.ProtocolMock {
    typealias MocksType = PokemonListInteractorDelegate
    typealias Stubbing = __StubbingProxy_PokemonListInteractorDelegate
    typealias Verification = __VerificationProxy_PokemonListInteractorDelegate

    private var __defaultImplStub: PokemonListInteractorDelegate?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    func enableDefaultImplementation(_ stub: PokemonListInteractorDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "fetchedPokemonListWithSuccess", "returnSignature": "", "fullyQualifiedName": "fetchedPokemonListWithSuccess(successResponse: [PokemonData]?)", "parameterSignature": "successResponse: [PokemonData]?", "parameterSignatureWithoutNames": "successResponse: [PokemonData]?", "inputTypes": "[PokemonData]?", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "successResponse", "call": "successResponse: successResponse", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("successResponse"), name: "successResponse", type: "[PokemonData]?", range: CountableRange(273..<304), nameRange: CountableRange(273..<288))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "successResponse", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchedPokemonListWithSuccess(successResponse: [PokemonData]?)  {
        
            return cuckoo_manager.call("fetchedPokemonListWithSuccess(successResponse: [PokemonData]?)",
                parameters: (successResponse),
                escapingParameters: (successResponse),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchedPokemonListWithSuccess(successResponse: successResponse))
        
    }
    
    // ["name": "fetchedPokemonListWithFailure", "returnSignature": "", "fullyQualifiedName": "fetchedPokemonListWithFailure(error: NSError?)", "parameterSignature": "error: NSError?", "parameterSignatureWithoutNames": "error: NSError?", "inputTypes": "NSError?", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "error: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("error"), name: "error", type: "NSError?", range: CountableRange(345..<360), nameRange: CountableRange(345..<350))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "error", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchedPokemonListWithFailure(error: NSError?)  {
        
            return cuckoo_manager.call("fetchedPokemonListWithFailure(error: NSError?)",
                parameters: (error),
                escapingParameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchedPokemonListWithFailure(error: error))
        
    }
    

	struct __StubbingProxy_PokemonListInteractorDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchedPokemonListWithSuccess<M1: Cuckoo.Matchable>(successResponse: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([PokemonData]?)> where M1.MatchedType == [PokemonData]? {
	        let matchers: [Cuckoo.ParameterMatcher<([PokemonData]?)>] = [wrap(matchable: successResponse) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonListInteractorDelegate.self, method: "fetchedPokemonListWithSuccess(successResponse: [PokemonData]?)", parameterMatchers: matchers))
	    }
	    
	    func fetchedPokemonListWithFailure<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(NSError?)> where M1.MatchedType == NSError? {
	        let matchers: [Cuckoo.ParameterMatcher<(NSError?)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonListInteractorDelegate.self, method: "fetchedPokemonListWithFailure(error: NSError?)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_PokemonListInteractorDelegate: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchedPokemonListWithSuccess<M1: Cuckoo.Matchable>(successResponse: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [PokemonData]? {
	        let matchers: [Cuckoo.ParameterMatcher<([PokemonData]?)>] = [wrap(matchable: successResponse) { $0 }]
	        return cuckoo_manager.verify("fetchedPokemonListWithSuccess(successResponse: [PokemonData]?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func fetchedPokemonListWithFailure<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == NSError? {
	        let matchers: [Cuckoo.ParameterMatcher<(NSError?)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("fetchedPokemonListWithFailure(error: NSError?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class PokemonListInteractorDelegateStub: PokemonListInteractorDelegate {
    

    

    
     func fetchedPokemonListWithSuccess(successResponse: [PokemonData]?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func fetchedPokemonListWithFailure(error: NSError?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: PokemonVault/ServiceClient.swift at 2019-05-15 06:33:48 +0000

//
//  ServiceClient.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/20.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Cuckoo
@testable import PokemonVault

import Foundation

class MockServiceClient: ServiceClient, Cuckoo.ProtocolMock {
    typealias MocksType = ServiceClient
    typealias Stubbing = __StubbingProxy_ServiceClient
    typealias Verification = __VerificationProxy_ServiceClient

    private var __defaultImplStub: ServiceClient?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    func enableDefaultImplementation(_ stub: ServiceClient) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "fetchData", "returnSignature": "", "fullyQualifiedName": "fetchData(from: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ())", "parameterSignature": "from urlString: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ()", "parameterSignatureWithoutNames": "urlString: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ()", "inputTypes": "String, (_ responseData: Data?) -> (), (_ error: NSError?) -> ()", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "urlString, success, failure", "call": "from: urlString, success: success, failure: failure", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("from"), name: "urlString", type: "String", range: CountableRange(221..<243), nameRange: CountableRange(221..<225)), CuckooGeneratorFramework.MethodParameter(label: Optional("success"), name: "success", type: "@escaping (_ responseData: Data?) -> ()", range: CountableRange(264..<312), nameRange: CountableRange(264..<271)), CuckooGeneratorFramework.MethodParameter(label: Optional("failure"), name: "failure", type: "@escaping (_ error: NSError?) -> ()", range: CountableRange(333..<377), nameRange: CountableRange(333..<340))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "urlString, success, failure", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchData(from urlString: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ())  {
        
            return cuckoo_manager.call("fetchData(from: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ())",
                parameters: (urlString, success, failure),
                escapingParameters: (urlString, success, failure),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchData(from: urlString, success: success, failure: failure))
        
    }
    

	struct __StubbingProxy_ServiceClient: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(from urlString: M1, success: M2, failure: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, (_ responseData: Data?) -> (), (_ error: NSError?) -> ())> where M1.MatchedType == String, M2.MatchedType == (_ responseData: Data?) -> (), M3.MatchedType == (_ error: NSError?) -> () {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (_ responseData: Data?) -> (), (_ error: NSError?) -> ())>] = [wrap(matchable: urlString) { $0.0 }, wrap(matchable: success) { $0.1 }, wrap(matchable: failure) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockServiceClient.self, method: "fetchData(from: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ())", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ServiceClient: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(from urlString: M1, success: M2, failure: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == (_ responseData: Data?) -> (), M3.MatchedType == (_ error: NSError?) -> () {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (_ responseData: Data?) -> (), (_ error: NSError?) -> ())>] = [wrap(matchable: urlString) { $0.0 }, wrap(matchable: success) { $0.1 }, wrap(matchable: failure) { $0.2 }]
	        return cuckoo_manager.verify("fetchData(from: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ())", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ServiceClientStub: ServiceClient {
    

    

    
     func fetchData(from urlString: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ())  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


class MockServiceClientImplementation: ServiceClientImplementation, Cuckoo.ClassMock {
    typealias MocksType = ServiceClientImplementation
    typealias Stubbing = __StubbingProxy_ServiceClientImplementation
    typealias Verification = __VerificationProxy_ServiceClientImplementation

    private var __defaultImplStub: ServiceClientImplementation?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    func enableDefaultImplementation(_ stub: ServiceClientImplementation) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "fetchData", "returnSignature": "", "fullyQualifiedName": "fetchData(from: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ())", "parameterSignature": "from urlString: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ()", "parameterSignatureWithoutNames": "urlString: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ()", "inputTypes": "String, (_ responseData: Data?) -> (), (_ error: NSError?) -> ()", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "", "parameterNames": "urlString, success, failure", "call": "from: urlString, success: success, failure: failure", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("from"), name: "urlString", type: "String", range: CountableRange(595..<617), nameRange: CountableRange(595..<599)), CuckooGeneratorFramework.MethodParameter(label: Optional("success"), name: "success", type: "@escaping (_ responseData: Data?) -> ()", range: CountableRange(638..<686), nameRange: CountableRange(638..<645)), CuckooGeneratorFramework.MethodParameter(label: Optional("failure"), name: "failure", type: "@escaping (_ error: NSError?) -> ()", range: CountableRange(707..<751), nameRange: CountableRange(707..<714))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "urlString, success, failure", "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func fetchData(from urlString: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ())  {
        
            return cuckoo_manager.call("fetchData(from: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ())",
                parameters: (urlString, success, failure),
                escapingParameters: (urlString, success, failure),
                superclassCall:
                    
                    super.fetchData(from: urlString, success: success, failure: failure)
                    ,
                defaultCall: __defaultImplStub!.fetchData(from: urlString, success: success, failure: failure))
        
    }
    

	struct __StubbingProxy_ServiceClientImplementation: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(from urlString: M1, success: M2, failure: M3) -> Cuckoo.ClassStubNoReturnFunction<(String, (_ responseData: Data?) -> (), (_ error: NSError?) -> ())> where M1.MatchedType == String, M2.MatchedType == (_ responseData: Data?) -> (), M3.MatchedType == (_ error: NSError?) -> () {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (_ responseData: Data?) -> (), (_ error: NSError?) -> ())>] = [wrap(matchable: urlString) { $0.0 }, wrap(matchable: success) { $0.1 }, wrap(matchable: failure) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockServiceClientImplementation.self, method: "fetchData(from: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ())", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_ServiceClientImplementation: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchData<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(from urlString: M1, success: M2, failure: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == (_ responseData: Data?) -> (), M3.MatchedType == (_ error: NSError?) -> () {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (_ responseData: Data?) -> (), (_ error: NSError?) -> ())>] = [wrap(matchable: urlString) { $0.0 }, wrap(matchable: success) { $0.1 }, wrap(matchable: failure) { $0.2 }]
	        return cuckoo_manager.verify("fetchData(from: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ())", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class ServiceClientImplementationStub: ServiceClientImplementation {
    

    

    
     override func fetchData(from urlString: String, success: @escaping (_ responseData: Data?) -> (), failure: @escaping (_ error: NSError?) -> ())  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

