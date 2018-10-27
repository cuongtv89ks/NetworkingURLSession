//
//  ViewController.swift
//  ConcurrencyTest
//
//  Created by Olive Union on 27/10/2018.
//  Copyright © 2018 Olive Union. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var primeNumberButton: UIButton!
    
    @IBAction func caculatePrimeNumber(_ sender: Any) {
        enablePrimeButton(enable: false)
        let queue = OperationQueue()
        //let operation = CaculatePrimeOperation()
        //queue.addOperation(operation)
        queue.addOperation {
            for number in 0 ... 1_000_000 {
                let isPrimeNumber = self.isPrime(number: number) // in closure we need to access function by self
                print("\(number) is prime: \(isPrimeNumber)")
            }
            OperationQueue.main.addOperation {
                self.enablePrimeButton(enable: true)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
    
    func enablePrimeButton(enable: Bool) {
        primeNumberButton.isEnabled = enable
    }

}

