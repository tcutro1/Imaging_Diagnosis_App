//
//  LibraryView.swift
//  Imaging_Diagnosis_App
//
//  Created by Thomas Cutro on 11/1/23.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        ZStack{
            
            Rectangle().foregroundColor(.black).ignoresSafeArea()
            VStack{
                HStack{
                    ZStack{
                        Rectangle().foregroundColor(.mint)
                        Text("RGB Image")
                    }
                    ZStack{
                        Rectangle().foregroundColor(.yellow)
                        Text("Depth Image")
                    }
                }
                HStack{
                    ZStack{
                        Rectangle().foregroundColor(.red)
                        Text("Thermal Image")
                    }
                    ZStack{
                        Rectangle().foregroundColor(.gray)
                        Text("Image Library")
                    }
                }
                
                
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
