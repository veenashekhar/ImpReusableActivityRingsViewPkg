//
//  ContentView.swift
//  ImpReusableActivityRingsViewPkg
//
//  Created by Veena Shekhar on 30/11/23.
//

import SwiftUI
import SwiftData
// import the package
import ReusableActivityRIngsViewPkg

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    
    //Defining Array with progress to be shown for each ring
    // Supports upto 7 rings
    @State private var progressArray: [CGFloat] = [1.0,1.0,0.75]
    
    
    /* Color Array
     1 = Red
     2 = Blue
     3 = Green
     4 = Magenta
     5 = Orange
     6 = Mint
     7 = Crimson
     */
     
    //Defining color for each ring of progress
    @State private var colorArray: [Int] = [3,6,7]

/*
  If number of elements in progressArray equals the number of elements in colorArray, the rings will be displayed with respective colors.
 Otherwise, default values shown above will be used.
 Ex: progressArray = [0.2, 0.5,0.6,0.4]
     colorArray = [] or colorArray = [1]
     will generate 4 progress rings with default colors - Red, Blue, Green and Magenta
 
*/

    var body: some View {
        ZStack{
            //Required line of code, before calling the library - to make the background black
            Color.black.edgesIgnoringSafeArea(.all)
            
            // Calling the library
            ActivityRingsView(progArr: $progressArray, colorArr: $colorArray).fixedSize()

        }
             }

    
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
