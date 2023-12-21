func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{ a, b in
        if a[a.index(a.startIndex, offsetBy: n)] == b[b.index(b.startIndex, offsetBy: n)]{
            return a < b
        }else{
            return a[a.index(a.startIndex, offsetBy: n)] < b[b.index(b.startIndex, offsetBy: n)]
        }
    }
}
