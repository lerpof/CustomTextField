//
//  TextAreaView.swift
//  Twitter Clone
//
//  Created by Leonardo Lazzari on 19/09/22.
//

import SwiftUI

public struct TextAreaView: View {
	@Binding var text: String
	let placeholder: String
	
	public init(_ placeholder: String, text: Binding<String>) {
		self.placeholder = placeholder
		self._text = text
		UITextView.appearance().backgroundColor = .clear
	}
	
    public var body: some View {
		ZStack(alignment: .topLeading) {
			if text.isEmpty {
				Text(placeholder)
					.foregroundColor(Color(.placeholderText))
					.padding(.horizontal, 8)
					.padding(.vertical, 12)
			}
			
			TextEditor(text: $text)
				.padding(4)
		}
		.font(.body)
    }
}
