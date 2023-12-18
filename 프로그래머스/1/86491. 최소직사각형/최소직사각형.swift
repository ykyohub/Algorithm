import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    return (sizes.map{ $0.max() ?? 0 }.max() ?? 0) * (sizes.map{ $0.min() ?? 0 }.max() ?? 0)
}