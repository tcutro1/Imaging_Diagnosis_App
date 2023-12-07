//
//  LibraryView.swift
//  Imaging_Diagnosis_App
//
//  Created by Thomas Cutro on 11/1/23.
//

import SwiftUI

struct LibraryView: View {
    @State public var rgbimage: Image = Image("Testing")
    
    var body: some View {
        ZStack{
            
            Rectangle().foregroundColor(.black).ignoresSafeArea()
            VStack{
                HStack{
                   
                    
                    rgbimage.resizable().aspectRatio(contentMode: .fit)
                    rgbimage.resizable().aspectRatio(contentMode: .fit)
                    
                    
                }
                rgbimage.resizable().aspectRatio(contentMode: .fit)
                   
                ZStack{
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing:15){
                            Button("""
                                   Picture
                                   1
                                   """){
                                
                            }
                            Button("""
                                   Picture
                                   2
                                   """){
                                
                            }
                            Button("""
                                   Picture
                                   3
                                   """){
                                
                            }
                            Button("""
                                   Picture
                                   4
                                   """){
                                
                            }
                            Button("""
                                   Picture
                                   5
                                   """){
                                
                            }
                            Button("""
                                   Picture
                                   6
                                   """){
                                
                            }
                            
                        }
                        
                    }.padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/).background()
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
