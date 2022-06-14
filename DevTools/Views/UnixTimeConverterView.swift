//
//  UnixTimeConverterView.swift
//  DevTools
//
//  Created by Manikandan on 14/06/22.
//

import SwiftUI

struct UnixTimeConverterView: View {
    
    @State private var username: String = ""
    @State private var localTime: String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                TextField(
                        "Unix Time input",
                        text: $username
                )
                .frame(width: 200.0)
                    .disableAutocorrection(true)
                    .border(.secondary)
                
                Menu("Input Type") {
                    Button("Unix Time milliseconds", action: {})
                    Button("Unix Time microseconds", action: {})
                }
                .frame(width: 200.0)
            }.padding()
        
            Divider()
            
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text("Local :")
                    HStack{
                        TextField("Mon Apr 11 17:53:54 +0700 2022", text: $localTime)
                            .frame(width: 250.0)
                            .disabled(true)
                        Button {
                            
                        } label: {
                            Image(systemName: "doc.on.doc.fill").padding(.all, 4.0
                            )
                        }
                    }
                    Text("UTC ( ISO 8601 ) :")
                    HStack{
                        TextField("Mon Apr 11 17:53:54 +0700 2022", text: $localTime)
                            .frame(width: 250.0)
                            .disabled(true)
                        Button {
                            
                        } label: {
                            Image(systemName: "doc.on.doc.fill").padding(.all, 4.0
                            )
                        }
                    }
                
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("Day of year")
                    HStack{
                        TextField("2022", text: $localTime)
                            .frame(width: 50.0)
                            .disabled(true)
                        Button {
                            
                        } label: {
                            Image(systemName: "doc.on.doc.fill").padding(.all, 4.0
                            )
                        }
                    }
                    Text("Week of year")
                    HStack{
                        TextField("2022", text: $localTime)
                            .frame(width: 50.0)
                            .disabled(true)
                        Button {
                            
                        } label: {
                            Image(systemName: "doc.on.doc.fill").padding(.all, 4.0
                            )
                        }
                    }
                }
                Spacer()
                VStack{
                    Text("Other Format (local)")
                    HStack{
                        TextField("Monday, Apr 11, 2022", text: $localTime)
                            .frame(width: 200.0)
                            .disabled(true)
                        Button {
                            
                        } label: {
                            Image(systemName: "doc.on.doc.fill").padding(.all, 4.0
                            )
                        }
                    }.padding(.top, 4.0)
                    HStack{
                        TextField("04/11/2022", text: $localTime)
                            .frame(width: 200.0)
                            .disabled(true)
                        Button {
                            
                        } label: {
                            Image(systemName: "doc.on.doc.fill").padding(.all, 4.0
                            )
                        }
                    }.padding(.top, 4.0)
                    HStack{
                        TextField("2022-04-11", text: $localTime)
                            .frame(width: 200.0)
                            .disabled(true)
                        Button {
                            
                        } label: {
                            Image(systemName: "doc.on.doc.fill").padding(.all, 4.0
                            )
                        }
                    }.padding(.top, 4.0)
                    HStack{
                        TextField("04-11-2022 10:53", text: $localTime)
                            .frame(width: 200.0)
                            .disabled(true)
                        Button {
                            
                        } label: {
                            Image(systemName: "doc.on.doc.fill").padding(.all, 4.0
                            )
                        }
                    }.padding(.top, 4.0)
                    HStack{
                        TextField("Apr 11, 10:53 AM", text: $localTime)
                            .frame(width: 200.0)
                            .disabled(true)
                        Button {
                            
                        } label: {
                            Image(systemName: "doc.on.doc.fill").padding(.all, 4.0
                            )
                        }
                    }.padding(.top, 4.0)
                    HStack{
                        TextField("April 2022", text: $localTime)
                            .frame(width: 200.0)
                            .disabled(true)
                        Button {
                            
                        } label: {
                            Image(systemName: "doc.on.doc.fill").padding(.all, 4.0
                            )
                        }
                    }.padding(.top, 4.0)
                }
                Spacer()
            }.padding()
            Spacer()
        }.navigationTitle("Unix Time Converter")
    }
}

struct UnixTimeConverterView_Previews: PreviewProvider {
    static var previews: some View {
        UnixTimeConverterView()
    }
}
