import Foundation

/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func plusMinus(arr: [Int]) -> Void {
    var totPos = 0.0
    var totNeg = 0.0
    var totZero = 0.0

    for i in arr {
        if i > 0{
            totPos += 1 
        } else if i < 0{
            totNeg += 1
        } else {
            totZero += 1
        }
    }

    print (String(format: "%.6f", totPos/Double(arr.count)))
    print (String(format: "%.6f", totNeg/Double(arr.count)))
    print (String(format: "%.6f", totZero/Double(arr.count)))

}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

plusMinus(arr: arr)
