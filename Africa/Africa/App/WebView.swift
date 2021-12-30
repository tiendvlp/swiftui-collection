//
//  WebView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 30/12/2021.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let url: URL?
    
    func makeUIView (context: Context) -> WKWebView {
        let prefs = WKPreferences()
        prefs.javaScriptEnabled = true
        let config = WKWebViewConfiguration()
        config.preferences = prefs
        let webView = WKWebView(frame: .zero, configuration: config)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let myURL = url else {
            return
        }
        let request = URLRequest(url: myURL)
        uiView.load(request)
    }
    

}
