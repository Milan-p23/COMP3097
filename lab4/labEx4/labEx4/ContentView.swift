//
//  ContentView.swift
//  labEx4
//
//  Created by Milan Patel on 2025-01-28.
//

import SwiftUI

struct ContentView: View {
    
    @State private var cnt: Int = 0
    @State private var step: Int = 1
    
    var body: some View {
        ZStack {
            // Add a transparent, full-screen view to handle taps
            Color.clear
                .contentShape(Rectangle())
                .onTapGesture {
                    dismissKeyboard()
                }
            
            VStack {
                // Counter Display
                Text("\(cnt)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(cnt >= 0 ? Color.black : Color.red)
                    .padding(50)
                
                // Increment/Decrement by 1
                HStack {
                    Button("-", action: {
                        decreaseCnt()
                    })
                    .accessibilityLabel("minus")
                    .frame(width: 80, height: 80)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    Button("+", action: {
                        cnt += 1
                    })
                    .accessibilityLabel("plus")
                    .frame(width: 80, height: 80)
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                
                // Increment/Decrement by 2
                HStack {
                    Button("-2", action: {
                        decreaseCntBy2()
                    })
                    .accessibilityLabel("minustwo")
                    .frame(width: 80, height: 80)
                    .background(.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    Button("+2", action: {
                        cnt += 2
                    })
                    .accessibilityLabel("plustwo")
                    .frame(width: 80, height: 80)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                
                // Step Controls
                HStack {
                    Text("Step:")
                        .font(.headline)
                    
                    TextField("Step", value: $step, formatter: NumberFormatter())
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 80)
                        .keyboardType(.numberPad)
                }
            
                HStack{
                    Button("-S", action: {
                        cnt -= step
                    })
                    .accessibilityLabel("minusstep")
                    .frame(width: 80, height: 80)
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
                    Button("+S", action: {
                        cnt += step
                    })
                    .accessibilityLabel("plusstep")
                    .frame(width: 80, height: 80)
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            
                .padding(.vertical)
                
                // Reset Button
                Button("Reset", action: {
                    cnt = 0
                })
                .frame(width: 170, height: 80)
                .background(.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding()
        }
        .ignoresSafeArea(.keyboard) // This ensures the tap gesture works even when the keyboard is up
    }
    
    private func decreaseCnt() {
        cnt -= 1
    }
    
    private func decreaseCntBy2() {
        cnt -= 2
    }
    
    // Function to dismiss the keyboard
    private func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#Preview {
    ContentView()
}

