




import Foundation


// Size
struct Size {
    var width: Double
    var height: Double
}

extension Size {
    func inset(widthBy width: Double, heightBy height: Double) -> Size {
        return Size(width: self.width-width*2, height: self.height-height*2)
    }
}

// Point
struct Point {
    var x: Double
    var y: Double
}

extension Point {
    func scadOutput() -> String {
        return "[\(x), \(y)]"
    }
    
    init(_ point: CGPoint) {
        self.x = Double(point.x)
        self.y = Double(point.y)
    }
    
    init() {
        self.x = 0
        self.y = 0
    }
}

func p(x: Double,_ y: Double) -> Point {
    return Point(x: x, y: y)
}