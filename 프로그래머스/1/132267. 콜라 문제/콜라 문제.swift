import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var coke = n
    var result = 0

    while coke >= a {
        result += coke / a * b
        coke = (coke / a * b) + (coke % a)
    }

    return result
}