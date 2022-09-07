import UIKit


class GoldenTriangle {
    
    private init() {}

    static let shared : GoldenTriangle = GoldenTriangle()
    
    func checkTriangle( num : [Int]) -> Bool {
        let sortedArray = num.sorted()
        if sortedArray.count < 3 {
            return false
        }
        else {
            for i in 0..<sortedArray.count-2 {
                if (sortedArray[i] >= 0 && sortedArray[i] > sortedArray[i + 2] - sortedArray[i + 1]) {
                    return true
                }
            }
        }
        return false
    }
}

GoldenTriangle.shared.checkTriangle(num:  [10,2,5,1,8,20])
GoldenTriangle.shared.checkTriangle(num: [10,50,5,1])
GoldenTriangle.shared.checkTriangle(num: [2,5,10,1,8,20])
