/// This file is generated by Weaver 0.12.4
/// DO NOT EDIT!
// MARK: - FooTest19
protocol FooTest19InputDependencyResolver {
    var foo: FiiTest19 { get }
}
typealias FooTest19DependencyResolver = FiiTest19Resolver & FuuTest19Resolver & BarTest19ProtocolResolver
final class FooTest19DependencyContainer: FooTest19DependencyResolver {
    let foo: FiiTest19
    private var _fuu: FuuTest19?
    var fuu: FuuTest19 {
        if let value = _fuu { return value }
        let value = FuuTest19()
        _fuu = value
        return value
    }
    private var _bar: BarTest19Protocol?
    var bar: BarTest19Protocol {
        if let value = _bar { return value }
        let value = BarTest19()
        _bar = value
        return value
    }
    init(injecting dependencies: FooTest19InputDependencyResolver) {
        foo = dependencies.foo
        _ = fuu
        _ = bar
    }
}
// MARK: - Detailed Resolvers
protocol BarTest19ProtocolResolver {
    var bar: BarTest19Protocol { get }
}
protocol FiiTest19Resolver {
    var foo: FiiTest19 { get }
}
protocol FuuTest19Resolver {
    var fuu: FuuTest19 { get }
}
