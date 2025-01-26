/*Lab Ex2*/
func area(width w:Int, height h:Int)->Int{
    return w*h
}
func area(_ w:Int, _ h:Int)->Int{
    return w*h
}
area(width: 1, height: 2)
area(1,2)

func calculator(a:Int, b:Int, op:String)->Int?{
    
    func sum(a:Int, b:Int)->Int{return a+b}
    func deduct(a:Int, b:Int)->Int{return a-b}
    func multi(a:Int, b:Int)->Int{return a*b}
    switch op{
    case "+": return sum(a: a, b: b)
    case "-": return deduct(a: a, b: b)
    case "*": return multi(a: a, b: b)
    default:
        return nil
    }
}

print(calculator(a: 1, b: 2, op: "+")!)
print(calculator(a: 1, b: 2, op: "-") ?? "NaN")
print(calculator(a: 1, b: 2, op: "*") ?? "NaN")
print(calculator(a: 1, b: 2, op: "x") ?? "NaN")
