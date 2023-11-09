//
//  ContentView.swift
//  Imaging_Diagnosis_App
//
//  Created by Thomas Cutro on 11/1/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView(){
            ZStack{
                Rectangle().foregroundColor(.black).ignoresSafeArea()
                VStack(alignment: .center) {
                    ZStack{
                        Rectangle().foregroundColor(.white)
                        Image(systemName: "camera.fill")
                        
                            .foregroundColor(Color.blue)
                        
                    
                    }
                    
                    
                    HStack(){
                        Spacer()
                        ZStack{
                            Rectangle()
                            NavigationLink( destination: CalibrationView()){
                                VStack{
                                    Text("Calibrate").foregroundColor(.red)
                                    Image(systemName:"level.fill")
                                        .foregroundColor(Color.red)
                                    
                                }}
                            
                                
                                
                            
                            
                        }
                        
                        
                        ZStack{
                            Rectangle()
                            NavigationLink( destination: SettingView()){
                                VStack{
                                    Text("Settings").foregroundColor(.red)
                                    Image(systemName:"gearshape.fill")
                                        .foregroundColor(Color.red)
                                    
                                }}
                            
                                
                                
                            
                            
                        }
                        
                        ZStack{
                            Rectangle()
                            Button {
                                print("low")
                            } label: {
                                VStack{
                                    
                                    Image(systemName:"button.programmable")
                                        .resizable()
                                        .foregroundColor(Color.red)
                                        .padding(/*@START_MENU_TOKEN@*/.all, 17.0/*@END_MENU_TOKEN@*/)
                                    
                                    
                                    
                                    
                                }
                                
                            }
                            
                            
                            
                            
                            
                        }
                        
                        ZStack{
                            Rectangle()
                            NavigationLink( destination: LibraryView()){
                                VStack{
                                    Text("Library").foregroundColor(.red)
                                    Image(systemName:"photo.stack")
                                        .foregroundColor(Color.red)
                                    
                                }}
                            
                                
                                
                            
                            
                        }
                        
                        ZStack{
                            Rectangle()
                            NavigationLink( destination: HelpView()){
                                VStack{
                                    Text("Help").foregroundColor(.red)
                                    Image(systemName:"questionmark")
                                        .foregroundColor(Color.red)
                                    
                                }}
                            
                                
                                
                            
                        
                        }
                        Spacer()
                    }
                    .frame(height: /*@START_MENU_TOKEN@*/77.0/*@END_MENU_TOKEN@*/)
                    
                    
                }.ignoresSafeArea()
                
            }
        }
        
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
