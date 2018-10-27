//
//  CaculatePrimeOperation.swift
//  ConcurrencyTest
//
//  Created by Olive Union on 27/10/2018.
//  Copyright © 2018 Olive Union. All rights reserved.
//

import Foundation

class CaculatePrimeOperation : Operation {
    override func main() {
        for number in 0 ... 100_000_000 {
            let isPrimeNumber = isPrime(number: number)
            print("\(number) is prime: \(isPrimeNumber)")
        }
    }
    
    func isPrime(number: Int) -> Bool {
        if number <= 1 {
            return false
        }
        if number <= 3 {
            return true
        }
        var i = 2
        while i*i < number {
            if number % i == 0 {
                return false
            }
            i = i + 2
        }
        return true
    }
}
