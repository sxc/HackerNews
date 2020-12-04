//
//  DetailView.swift
//  HackerNews (iOS)
//
//  Created by Xiaochun Shen on 2020/12/3.
//

import SwiftUI
import WebKit


struct DetailView: View {
    
    let url: String?
    
    
    var body: some View {
        WebView(urlString: url)
        
        
//        Link("Visit Apple",
//              destination: URL(string: "https://www.apple.com")!)
//            .font(.title)
//            .foregroundColor(.red)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        
        }
    }
}
