import UIKit

protocol D {
    func render()
}
extension D {
    func circle() {
        print("protocols")
    }

    func render() {
        print("render D")
    }
}

struct SVG: D {
    
    func circle() {
        print("Class")
    }
    
    func render() {
        print("render SVG")
    }

}
let s = SVG()
s.circle()
s.render()
