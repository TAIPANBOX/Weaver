/// This file is generated by Weaver 0.12.4
/// DO NOT EDIT!
// MARK: - FooTest3
protocol FooTest3InputDependencyResolver {
    var faa: FaaTest3 { get }
}
protocol FooTest3DependencyResolver {
    var faa: FaaTest3 { get }
    var fuu: FuuTest3 { get }
}
final class FooTest3DependencyContainer: FooTest3DependencyResolver {
    let faa: FaaTest3
    private var _fuu: FuuTest3?
    var fuu: FuuTest3 {
        if let value = _fuu { return value }
        let value = FuuTest3()
        _fuu = value
        return value
    }
    init(injecting dependencies: FooTest3InputDependencyResolver) {
        faa = dependencies.faa
        _ = fuu
    }
}
