//
//  AddCardView.swift
//  MoneyManager
//
//  Created by andreasara-dev on 03/07/23.
//

import SwiftUI

struct AddCardView: View {
    @EnvironmentObject var dataController: DataController
    @StateObject private var viewModel = ViewModel()
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack {
                SecureField("Enter card number", text: $viewModel.cardNumber)
                    .foregroundColor(colorScheme == .light ? .black : .white)
                    .keyboardType(.numberPad)
                    .padding()
                    .border(LinearGradient.gradient(for: colorScheme))
                
                TextField("Enter balance", text: $viewModel.balance)
                    .foregroundColor(colorScheme == .light ? .black : .white)
                    .keyboardType(.decimalPad)
                    .padding()
                    .border(LinearGradient.gradient(for: colorScheme))
                    .padding(.bottom)
                
                Button {
                    viewModel.maskCardNumber(dataController: dataController)
                    dismiss()
                } label: {
                    Text("Submit")
                        .padding()
                        .padding([.leading, .trailing])
                        .foregroundColor(colorScheme == .light ? .black : .white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(LinearGradient.gradient(for: colorScheme), lineWidth: 2)
                        }
                }
                .accessibilityLabel("Press this button for insert you card informations")
                .accessibilityHint("Added!")
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                        .padding(.vertical)
                }
            }
            .padding()
            .toolbar {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "x.circle")
                        .foregroundColor(.red)
                }
                .accessibilityLabel("Return to previous screen")
            }
            .navigationTitle("Add Card")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AddCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AddCardView()
            AddCardView()
                .preferredColorScheme(.dark)
        }
        .environmentObject(DataController())
    }
}
