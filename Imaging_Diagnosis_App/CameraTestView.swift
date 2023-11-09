//
//  CameraTestView.swift
//  Imaging_Diagnosis_App
//
//  Created by Thomas Cutro on 11/8/23.
//

import SwiftUI

struct CameraTestView: View {
    
    @State private var capturedImage: UIImage? = nil
    @State private var isCustomCameraViewPresented = false
    var body: some View {
        ZStack{
            if capturedImage != nil{
                Image(uiImage: capturedImage!).resizable().scaledToFill().ignoresSafeArea()
            }else{
                Color(UIColor.systemBackground)
            }
            
            VStack{
                Spacer()
                Button {
                    isCustomCameraViewPresented.toggle()
                } label: {
                    Image(systemName: "camera.fill").font(.largeTitle).padding().background(Color.black).foregroundColor(.white).clipShape(Circle())
                    
                    
                }.padding(.bottom).sheet(isPresented: $isCustomCameraViewPresented, content: {CustomCameraView(capturedImage: $capturedImage)})

            }
        }
    }
}

struct CameraTestView_Previews: PreviewProvider {
    static var previews: some View {
        CameraTestView()
    }
}
