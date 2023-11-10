//
//  ProfileView.swift
//  airbnb-clone-b
//
//  Created by MAC44 on 10/11/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 10) {
                Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 130)
                    .cornerRadius(100)
                    .padding(.leading, 30)
                Text("Hi I'm Carlos")
                    .font(.title2)
                    .padding(.leading, 30)
                Text("Joined in 2023")
                    .foregroundStyle(.gray)
                    .padding(.leading, 30)
                Divider()
                    .padding(.vertical)
            VStack(alignment: .leading, spacing: 20){
                Image(systemName: "shield.lefthalf.fill")
                    .padding(.leading, 30)
                    
                
            }
            VStack(alignment: .leading, spacing: 20) {
                Text("Identity verification")
                    .font(.title3)
                    .padding(.leading, 30)
                Text("Show others you're really you with the identity verification badge")
                    .padding(.leading, 30)
                Button {} label: {
                    Text("Get the badge")
                        .padding()
                        .foregroundStyle(.black)
                        .overlay(
                    RoundedRectangle(cornerRadius: 6).stroke(Color.black))
                            }.padding(.leading, 30)
                        }
                    Divider()
                        .padding(.vertical)
            HStack {
                Image(systemName: "pencil.circle")
                    .padding(.leading, 30)
                Text("Some info is shown in its orginal language.")
                    .font(.footnote)
                        }
                Text("Matt confirmed")
                    .font(.title2)
                    .padding(.top)
                    .padding(.leading, 30)
                    .fontWeight(.semibold)
            }
            .padding(.vertical)
            HStack{
                Image(systemName: "checkmark.seal.fill")
                    .padding(.leading, -90)
                Text("Phone Number")
                    .font(.title3)
                }
            Divider()
                .padding(.vertical)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
