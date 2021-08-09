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
