//
//  RGBView.swift
//  Imaging_Diagnosis_App
//
//  Created by Thomas Cutro on 12/6/23.
//

import SwiftUI

struct RGBView: View {
    @Binding var image: String
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(.mint)
            Text("RGB Image")
        }
    }
}

#Preview {
    RGBView(image: "hi")
}
