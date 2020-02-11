//
//  main.swift
//  INheritanceExample
//
//  Created by MacStudent on 2020-02-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//class persone

import Foundation

var p1 = Person(id: 1, name: "Monika",gender:Gender.Male,birthDate: Date())

var s1 = Student(id: 1, name: "Sharma", gender: Gender.Female, marks: ["MADT01" : 50.0, "MADT02" : 45.0])

s1.setMarks(Code: "MADT03", mark: 70.6)

//s1.setMarks(Code: "MADT03", mark: 90.6)
print(s1["MADT01"])

s1["MADT01"] = 57.8

print(s1["MADT01"])

//print(s1.total)
//print(s1.per)
//print(s1.result)

s1.display()

