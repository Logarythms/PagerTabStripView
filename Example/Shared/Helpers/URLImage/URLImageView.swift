//
//  URLImageView.swift
//  Example (iOS)
//
//  Created by Milena Zabaleta on 14/7/21.
//  Adapted by Xmartlabs from https://github.com/SchwiftyUI/NewsApiApp/blob/master/NewsApp/Model/UrlImageModel.swift
//

import Foundation
import SwiftUI

struct URLImageView: View {
    @ObservedObject var urlImageModel: URLImageModel
    
    init(urlString: String?) {
        urlImageModel = URLImageModel(urlString: urlString)
    }
    
    var body: some View {
        Image(uiImage: urlImageModel.image ?? URLImageView.defaultImage!)
            .resizable()
    }
    
    static var defaultImage = UIImage(named: "defaultImage")
}