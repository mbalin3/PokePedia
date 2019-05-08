// MARK: - Mocks generated from file: PokemonVault/BaseViewModelDelegate.swift at 2019-05-08 12:36:29 +0000

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
    

	struct __StubbingProxy_BaseViewModelDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func refreshViewContents() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockBaseViewModelDelegate.self, method: "refreshViewContents()", parameterMatchers: matchers))
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
	    
	}

}

 class BaseViewModelDelegateStub: BaseViewModelDelegate {
    

    

    
     func refreshViewContents()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: PokemonVault/NetworkSession.swift at 2019-05-08 12:36:29 +0000

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


// MARK: - Mocks generated from file: PokemonVault/PokemonDetailsBoundary.swift at 2019-05-08 12:36:29 +0000

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
    

    

    
    // ["name": "fetchPokemonDetails", "returnSignature": "", "fullyQualifiedName": "fetchPokemonDetails(fromUrl: String)", "parameterSignature": "fromUrl: String", "parameterSignatureWithoutNames": "fromUrl: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "fromUrl", "call": "fromUrl: fromUrl", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("fromUrl"), name: "fromUrl", type: "String", range: CountableRange(404..<419), nameRange: CountableRange(404..<411))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "fromUrl", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
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


// MARK: - Mocks generated from file: PokemonVault/PokemonDetailsInteractorDelegate.swift at 2019-05-08 12:36:29 +0000

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

    

    

    
    // ["name": "fetchPokemonDetailsSuccess", "returnSignature": "", "fullyQualifiedName": "fetchPokemonDetailsSuccess(successResponse: PokemonDetailsModel?)", "parameterSignature": "successResponse: PokemonDetailsModel?", "parameterSignatureWithoutNames": "successResponse: PokemonDetailsModel?", "inputTypes": "PokemonDetailsModel?", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "successResponse", "call": "successResponse: successResponse", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("successResponse"), name: "successResponse", type: "PokemonDetailsModel?", range: CountableRange(276..<313), nameRange: CountableRange(276..<291))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "successResponse", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchPokemonDetailsSuccess(successResponse: PokemonDetailsModel?)  {
        
            return cuckoo_manager.call("fetchPokemonDetailsSuccess(successResponse: PokemonDetailsModel?)",
                parameters: (successResponse),
                escapingParameters: (successResponse),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchPokemonDetailsSuccess(successResponse: successResponse))
        
    }
    
    // ["name": "fetchPokemonDetailsFailure", "returnSignature": "", "fullyQualifiedName": "fetchPokemonDetailsFailure(error: NSError?)", "parameterSignature": "error: NSError?", "parameterSignatureWithoutNames": "error: NSError?", "inputTypes": "NSError?", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "error", "call": "error: error", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("error"), name: "error", type: "NSError?", range: CountableRange(351..<366), nameRange: CountableRange(351..<356))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "error", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchPokemonDetailsFailure(error: NSError?)  {
        
            return cuckoo_manager.call("fetchPokemonDetailsFailure(error: NSError?)",
                parameters: (error),
                escapingParameters: (error),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchPokemonDetailsFailure(error: error))
        
    }
    

	struct __StubbingProxy_PokemonDetailsInteractorDelegate: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchPokemonDetailsSuccess<M1: Cuckoo.Matchable>(successResponse: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(PokemonDetailsModel?)> where M1.MatchedType == PokemonDetailsModel? {
	        let matchers: [Cuckoo.ParameterMatcher<(PokemonDetailsModel?)>] = [wrap(matchable: successResponse) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonDetailsInteractorDelegate.self, method: "fetchPokemonDetailsSuccess(successResponse: PokemonDetailsModel?)", parameterMatchers: matchers))
	    }
	    
	    func fetchPokemonDetailsFailure<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(NSError?)> where M1.MatchedType == NSError? {
	        let matchers: [Cuckoo.ParameterMatcher<(NSError?)>] = [wrap(matchable: error) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonDetailsInteractorDelegate.self, method: "fetchPokemonDetailsFailure(error: NSError?)", parameterMatchers: matchers))
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
	    func fetchPokemonDetailsSuccess<M1: Cuckoo.Matchable>(successResponse: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == PokemonDetailsModel? {
	        let matchers: [Cuckoo.ParameterMatcher<(PokemonDetailsModel?)>] = [wrap(matchable: successResponse) { $0 }]
	        return cuckoo_manager.verify("fetchPokemonDetailsSuccess(successResponse: PokemonDetailsModel?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func fetchPokemonDetailsFailure<M1: Cuckoo.Matchable>(error: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == NSError? {
	        let matchers: [Cuckoo.ParameterMatcher<(NSError?)>] = [wrap(matchable: error) { $0 }]
	        return cuckoo_manager.verify("fetchPokemonDetailsFailure(error: NSError?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class PokemonDetailsInteractorDelegateStub: PokemonDetailsInteractorDelegate {
    

    

    
     func fetchPokemonDetailsSuccess(successResponse: PokemonDetailsModel?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func fetchPokemonDetailsFailure(error: NSError?)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: PokemonVault/PokemonListBoundary.swift at 2019-05-08 12:36:29 +0000

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

    

    

    
    // ["name": "fetchPokemonList", "returnSignature": "", "fullyQualifiedName": "fetchPokemonList(numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void)", "parameterSignature": "numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void", "parameterSignatureWithoutNames": "numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void", "inputTypes": "Int, SuccessBlock, (_ error: NSError?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "numberOfPokemons, success, failure", "call": "numberOfPokemons: numberOfPokemons, success: success, failure: failure", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("numberOfPokemons"), name: "numberOfPokemons", type: "Int", range: CountableRange(356..<377), nameRange: CountableRange(356..<372)), CuckooGeneratorFramework.MethodParameter(label: Optional("success"), name: "success", type: "@escaping SuccessBlock", range: CountableRange(405..<436), nameRange: CountableRange(405..<412)), CuckooGeneratorFramework.MethodParameter(label: Optional("failure"), name: "failure", type: "@escaping (_ error: NSError?) -> Void", range: CountableRange(464..<510), nameRange: CountableRange(464..<471))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "numberOfPokemons, success, failure", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchPokemonList(numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void)  {
        
            return cuckoo_manager.call("fetchPokemonList(numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void)",
                parameters: (numberOfPokemons, success, failure),
                escapingParameters: (numberOfPokemons, success, failure),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchPokemonList(numberOfPokemons: numberOfPokemons, success: success, failure: failure))
        
    }
    

	struct __StubbingProxy_PokemonListBoundary: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchPokemonList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(numberOfPokemons: M1, success: M2, failure: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(Int, SuccessBlock, (_ error: NSError?) -> Void)> where M1.MatchedType == Int, M2.MatchedType == SuccessBlock, M3.MatchedType == (_ error: NSError?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Int, SuccessBlock, (_ error: NSError?) -> Void)>] = [wrap(matchable: numberOfPokemons) { $0.0 }, wrap(matchable: success) { $0.1 }, wrap(matchable: failure) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonListBoundary.self, method: "fetchPokemonList(numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void)", parameterMatchers: matchers))
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
	
	    
	
	    
	    @discardableResult
	    func fetchPokemonList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(numberOfPokemons: M1, success: M2, failure: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Int, M2.MatchedType == SuccessBlock, M3.MatchedType == (_ error: NSError?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Int, SuccessBlock, (_ error: NSError?) -> Void)>] = [wrap(matchable: numberOfPokemons) { $0.0 }, wrap(matchable: success) { $0.1 }, wrap(matchable: failure) { $0.2 }]
	        return cuckoo_manager.verify("fetchPokemonList(numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class PokemonListBoundaryStub: PokemonListBoundary {
    

    

    
     func fetchPokemonList(numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: PokemonVault/PokemonListCacheDecorator.swift at 2019-05-08 12:36:29 +0000

//
//  PokemonListCacheDecorator.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/25.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Cuckoo
@testable import PokemonVault

import Foundation

class MockPokemonListCacheDecorator: PokemonListCacheDecorator, Cuckoo.ProtocolMock {
    typealias MocksType = PokemonListCacheDecorator
    typealias Stubbing = __StubbingProxy_PokemonListCacheDecorator
    typealias Verification = __VerificationProxy_PokemonListCacheDecorator

    private var __defaultImplStub: PokemonListCacheDecorator?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    func enableDefaultImplementation(_ stub: PokemonListCacheDecorator) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "fetchPokemonList", "returnSignature": "", "fullyQualifiedName": "fetchPokemonList(numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void)", "parameterSignature": "numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void", "parameterSignatureWithoutNames": "numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void", "inputTypes": "Int, SuccessBlock, (_ error: NSError?) -> Void", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "numberOfPokemons, success, failure", "call": "numberOfPokemons: numberOfPokemons, success: success, failure: failure", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("numberOfPokemons"), name: "numberOfPokemons", type: "Int", range: CountableRange(356..<377), nameRange: CountableRange(356..<372)), CuckooGeneratorFramework.MethodParameter(label: Optional("success"), name: "success", type: "@escaping SuccessBlock", range: CountableRange(405..<436), nameRange: CountableRange(405..<412)), CuckooGeneratorFramework.MethodParameter(label: Optional("failure"), name: "failure", type: "@escaping (_ error: NSError?) -> Void", range: CountableRange(464..<510), nameRange: CountableRange(464..<471))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "numberOfPokemons, success, failure", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func fetchPokemonList(numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void)  {
        
            return cuckoo_manager.call("fetchPokemonList(numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void)",
                parameters: (numberOfPokemons, success, failure),
                escapingParameters: (numberOfPokemons, success, failure),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.fetchPokemonList(numberOfPokemons: numberOfPokemons, success: success, failure: failure))
        
    }
    

	struct __StubbingProxy_PokemonListCacheDecorator: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func fetchPokemonList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(numberOfPokemons: M1, success: M2, failure: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(Int, SuccessBlock, (_ error: NSError?) -> Void)> where M1.MatchedType == Int, M2.MatchedType == SuccessBlock, M3.MatchedType == (_ error: NSError?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Int, SuccessBlock, (_ error: NSError?) -> Void)>] = [wrap(matchable: numberOfPokemons) { $0.0 }, wrap(matchable: success) { $0.1 }, wrap(matchable: failure) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPokemonListCacheDecorator.self, method: "fetchPokemonList(numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_PokemonListCacheDecorator: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func fetchPokemonList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(numberOfPokemons: M1, success: M2, failure: M3) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Int, M2.MatchedType == SuccessBlock, M3.MatchedType == (_ error: NSError?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Int, SuccessBlock, (_ error: NSError?) -> Void)>] = [wrap(matchable: numberOfPokemons) { $0.0 }, wrap(matchable: success) { $0.1 }, wrap(matchable: failure) { $0.2 }]
	        return cuckoo_manager.verify("fetchPokemonList(numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class PokemonListCacheDecoratorStub: PokemonListCacheDecorator {
    

    

    
     func fetchPokemonList(numberOfPokemons: Int, success: @escaping SuccessBlock, failure: @escaping (_ error: NSError?) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: PokemonVault/ServiceClient.swift at 2019-05-08 12:36:29 +0000

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

