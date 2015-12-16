//
//  main.swift
//  Matrix
//
//  Created by Matt Egan on 12/15/15.
//  Copyright © 2015 Matt Egan. All rights reserved.
//

import Foundation

//  simple helper functions
print(Matrix.I(3))
print(Matrix.diagonal([1, 2, 3]))

//  transpose a matrix
print(Matrix([[1, 2]]).transpose())

//  add, subtract, multiply and divide by and from scalars
print((Matrix.ones(3, 3) * 10.0) + (Matrix.zeros(3, 3) + 5.0))

//  multiply matrices
print(Matrix([[1, 2], [3, 4]]) * Matrix([[1, 2]]).transpose())

//  map functions ((Double) -> Double) to a matrix
//  string conversion with adjustable output precision
print(Matrix([[0, 30], [60, 90]]).map{sin($0 * 3.14159 / 180)}.toString(10))

//  combine two matrices with a function ((Double, Double) -> Double)
print(Matrix.I(3).combine(Matrix.I(3), operation: { $0 - 5 * $1}))

let z = Matrix([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
//  set individual rows and columns
z[0, [0, 2]] = Matrix([[-5]])
print(z)

//  index with any combination of int, Array<Int>, Range<Int> and StrideThrough<Int>
z[1, z.allCols] = Matrix([[20, 20, 20]])
print(z)