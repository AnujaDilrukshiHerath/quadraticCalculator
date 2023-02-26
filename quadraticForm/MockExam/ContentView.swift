//
//  ContentView.swift
//  MockExam
//
//  Created by Anuja Dilrukshi on 2023-02-24.
//

import SwiftUI

struct ContentView: View {
    @State var aText : Double = 0.0
    @State var bText : Double = 0.0
    @State var cText : Double = 0.0
    @State var delta : Double = 0.0
    @State var x1 : Double = 0.0
    @State var x2 : Double = 0.0

    @State var message = ""
    @State var message2 = ""
    @State var message3 = ""


    //@State private var a: Double = 1
    //@State private var b: Double = 1
    
    func calculate(){
        delta = pow(Double(bText),2) - 4 * Double(aText) * Double(bText)
        x1 = (-1 * (Double(bText))) + sqrt(delta) / 2 * (Double(aText))
        x2 = (-1 * (Double(bText))) - sqrt(delta) / 2 * (Double(aText))

        if delta > 0 {
            message = String(" Delta is: \(delta)")
            message2 = String(" X1 is: \(x1)")
            message3 = String(" X2 is: \(x2)")
            
        } else if delta < 0 {
            message = String(" It is not possible to find solutions")
            //message2 = String(" Delta is: \(x1)")
            //message3 = String(" Delta is: \(x2)")

            
        }else if delta == 0 {
            message = String(" Delta is: \(delta)")
            //message2 = String(" X1 is: \(x1)")
            message3 = String(" X2 is: \(x2)")


        }
    }
    
    var body: some View {
            VStack (alignment: .center){
                Text("Quadratic Solver")
                Text("The Quadratic form is:")
                Image ("quadraticForm")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio (contentMode: .fit)
                
                
                Label("Enter the first term", systemImage: "a.circle.fill")
                TextField("", value: $aText, formatter: NumberFormatter())
                    .fixedSize()
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).border(Color.blue)
                
                
                
                //            TextField("0.00", text: $aText).keyboardType(.decimalPad)
                //            //TextField("Enter The value of a in ", text: $aText.keyboardType(.decimalPad))
                //                .fixedSize()
                //                .keyboardType(.decimalPad)
                //                .textFieldStyle(RoundedBorderTextFieldStyle()).border(Color.blue)
                
                Label("Enter the second term",systemImage: "b.circle.fill")
                TextField("", value: $bText, formatter: NumberFormatter())
                    .fixedSize()
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).border(Color.blue)
                
                
                
                //            TextField("Enter The value of a in ", text: $bText, formatter : NumberFormatter)
                //                .textFieldStyle(RoundedBorderTextFieldStyle()).border(Color.blue)
                
                Label("Enter the third term", systemImage: "c.circle.fill")
                TextField("", value: $cText, formatter: NumberFormatter())
                    .fixedSize()
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).border(Color.blue)
                
                Button{
                    calculate()
                    
                    
                }
                       label: {
                    Text ("Solve for x")
                           
                           //Text(" x1 = \(x1), x2 = \(x2)")
                
                }
                
            

            }
        ZStack{
            VStack{
                Text("\(message)")
                Text("\(message2)")
                Text("\(message3)")

                
            }
        
        
        .padding()
    }
    }
    
    
        
    
    
//    struct ComplexNumber {
//        var real: Double
//        var imaginary: Double
//        public init(_ real: Double, _ imaginary: Double) {
//            self.real = real
//            self.imaginary = imaginary
//        }
//        public init(_ real: Double) {
//            self.real = real
//            self.imaginary = 0
//        }
//        var isReal: Bool { imaginary == 0 }
//    }
//
//    func linearSolve(a: Double, b: Double) -> [ComplexNumber] {
//        if a == 0 { return [] }
//        return [ComplexNumber(-b/a)]
//    }
//
//
//    func quadraticSolve(a: Double, b: Double, c: Double, threshold: Double = 0.0001) -> [ComplexNumber] {
//        if a == 0 { return linearSolve(a: b, b: c) }
//        var roots = [ComplexNumber]()
//        var d = pow(b, 2) - 4*a*c // discriminant
//        // Check if discriminate is within the 0 threshold
//        if -threshold < d && d < threshold { d = 0 }
//        if d > 0 {
//            let x_1 = ComplexNumber((-b + sqrt(d))/(2*a))
//            let x_2 = ComplexNumber((-b - sqrt(d))/(2*a))
//            roots = [x_1, x_2]
//        } else if d == 0 {
//            let x = ComplexNumber(-b/(2*a))
//            roots = [x, x]
//        } else if d < 0 {
//            let x_1 = ComplexNumber(-b/(2*a), sqrt(-d)/(2*a))
//            let x_2 = ComplexNumber(-b/(2*a), -sqrt(-d)/(2*a))
//            roots = [x_1, x_2]
//        }
//
//        return roots
//    }
//
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
