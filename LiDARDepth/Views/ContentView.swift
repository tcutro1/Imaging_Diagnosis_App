/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The app's main user interface.
*/

import SwiftUI
import MetalKit
import Metal

struct ContentView: View {
    
    @StateObject private var manager = CameraManager()
    
    @State private var maxDepth = Float(5.0)
    @State private var minDepth = Float(0.0)
    @State private var scaleMovement = Float(1.0)
    
    let maxRangeDepth = Float(15)
    let minRangeDepth = Float(0)
    
    var body: some View {
        VStack {
            ScrollView {
                //LazyVGrid(columns: [GridItem(.flexible(maximum: 600)), //GridItem(.flexible(maximum: 600))]) {
                    
                    if manager.dataAvailable {
                      ZStack {
                        DepthOverlay(manager: manager,
                                     maxDepth: $maxDepth,
                                     minDepth: $minDepth
                        )
                        .aspectRatio(calcAspect(orientation: viewOrientation, texture: manager.capturedData.depth), contentMode: .fit)
                        Spacer()
                        Button {
                            manager.processingCapturedResult ? manager.resumeStream() : manager.startPhotoCapture()
                        } label: {
                          Image(systemName: "camera.circle").font(.system(size: 72)).foregroundColor(.white)
                          
                          
                        }
                        .padding(.top, 400.0)
                        
                      }
                    }
                //}
            }
        }
    }
}

struct SliderDepthBoundaryView: View {
    @Binding var val: Float
    var label: String
    var minVal: Float
    var maxVal: Float
    let stepsCount = Float(200.0)
    var body: some View {
        HStack {
            Text(String(format: " %@: %.2f", label, val))
            Slider(
                value: $val,
                in: minVal...maxVal,
                step: (maxVal - minVal) / stepsCount
            ) {
            } minimumValueLabel: {
                Text(String(minVal))
            } maximumValueLabel: {
                Text(String(maxVal))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
