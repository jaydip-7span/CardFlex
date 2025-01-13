//
//  CardFlexTextField.swift
//  CardFlex
//
//  Created by Jaydip Jadav on 13/01/25.
//

import SwiftUI

struct CardFlexTextField: View {
    @State var hit: String = "Card Number"
    @State var titale: String = ""
    @State var isSecure: Bool = false
    @Binding var value: String
    var onChange: () -> ()
    @FocusState private var isActive: Bool
    var body: some View {
        VStack(alignment: .leading,spacing: 8) {
            Text(hit)
            Group {
                if !isSecure {
                    TextField(titale, text: $value)
                }else {
                    SecureField(titale, text: $value)
                }
            }
            .modifier(CardFlexTextFieldModifier())
            .focused($isActive)
            .keyboardType(hit == "Card Holder" ? .default : .numberPad)
            .onChange(of: value) { newValue in
                withAnimation(.easeIn) {
                    onChange()
                }
            }
        }
        .zIndex(2)
    }
}
