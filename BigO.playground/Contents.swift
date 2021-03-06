import UIKit

//Linear Time complexity
//Mark:- O(n) example

let fish = ["dory", "bruce", "marlin", "nemo"];
let nemo = ["nemo"];
let everyone = ["dory", "bruce", "marlin", "nemo", "gill", "bloat", "nigel", "squirt", "darla", "hank"];

let large = Array.init(repeating: "nemo", count: 100000)

func findNemo(_ fish:[String]) {
  for i in 0..<fish.count {
    if (fish[i] == "nemo") {
      print("Found NEMO!");
    }
  }

// modern-style for loop
  /*
     fish.forEach { fishName in
       if (fishName == "nemo") {
         print("Found NEMO!");
       }
     }
 */
}

findNemo(everyone)



//Constant Time complexity
//Mark:- O(1) example
let boxes = [1, 2, 3, 4, 5]

func processFirst(_ data: [Int]) {
    guard let first = boxes.first else {
        return
    }
    print(first)
}

processFirst(boxes)


//Quadratic Time complexity
//Mark:- O(n^2) example
func printAllPaires(_ data: [Int]) {
    data.forEach { number1 in
        data.forEach { (number2) in
            print("[\(number1), \(number2)]")
        }
    }
}

printAllPaires(boxes)



func printAllNumbersThanPrintSumofAllPairs(_ data: [Int]) {

  data.forEach { number1 in
    print(number1)
  }

  data.forEach { number1 in
    data.forEach { number2 in
      print("Sum of pairs is \(number1 + number2)")
    }
  }
}


printAllNumbersThanPrintSumofAllPairs(boxes)
// O(n + nˆ2) = O(nˆ2)


//Logarithmic Time complexity
//Mark:- O(log n) example
var j = 1
let n = 10000
while j < n {
  // do constant time stuff
  j *= 2
}
//Binary Search is the best example


//Factorial Time complexity
//Mark:- O(n!) example
func nFactFunc(n: Int) {
  for _ in stride(from: 0, to: n, by: 1) {
    nFactFunc(n: n - 1)
  }
}

