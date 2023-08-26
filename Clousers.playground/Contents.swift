import UIKit

func sum(n1: Int, n2: Int) -> Int {
    return n1+n2
}

sum(n1: 1, n2: 1)

func multiply(n1: Int, n2: Int) -> Int {
    return n1*n2
}

multiply(n1: 2, n2: 4)

func calculate(num1: Int, num2: Int, myFunc: (Int,Int)->Int) -> Int {
    return myFunc(num1,num2)
}


calculate(num1: 2, num2: 5, myFunc: multiply)

calculate(num1: 3, num2: 4, myFunc: { (num1 : Int, num2 : Int) in
    num1*num2
})

calculate(num1: 2, num2: 12, myFunc: { (num1, num2) in
    num1*num2
})


calculate(num1: 2, num2: 5, myFunc: { num1, num2 in
    num1*num2
})

calculate(num1: 3, num2: 4, myFunc: { $0 * $1 } )

let myArray =  [10,25,30]

func test(num1 : Int) -> Int {
    return num1 / 5
}

myArray.map(test)

myArray.map({$0 / 4})
