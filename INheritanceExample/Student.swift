//
//  Student.swift
//  INheritanceExample
//
//  Created by MacStudent on 2020-02-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Student : Person
{
    lazy var marks = [String: Double]() /// Dictoinary
    init(id: Int, name: String, gender: Gender , marks : [String : Double]) {
        super.init(id: id, name: name, gender: gender)
        self.marks = marks
    }
    
    subscript(code : String) -> Double
    {
        get {
            self.marks[code] ?? 0.0
        }
        set(newValue)
        {
            self.marks.updateValue(newValue, forKey: code)
        }
    }
    
    var total : Double
    {

        return calculateTotal()
    }
    
    var per: Double
    {
        return calculatePercentage()
        
    }
    var result: String
    {
        return "PASS"
    }
    
    
    private func calculateTotal() -> Double
    {
        var t = 0.0
        for m in self.marks
        {
            t = t + m.value
        }
        return t
    }
    
    private func calculatePercentage() -> Double
    {
        return (self.total / Double(self.marks.count))
    }
     
    func setMarks(Code : String , mark : Double)
    {
        self.marks.updateValue(mark, forKey: Code)
    }
    
    override func display()
    {
        super.display()
        for m in self.marks
        {
            print(m.key,":",m.value)
        }
        print("Total : \(self.total)")
        print("Per : \(self.per)")
        print("Result : \(self.total)")
        
    }
    
}
