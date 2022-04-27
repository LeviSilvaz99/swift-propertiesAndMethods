enum Mathematics {
    static func getLength(x: Double, y: Double) -> Double {
        (x * x + y * y).squareRoot()
    }
}

Mathematics.getLength(x: 3, y: 4)
