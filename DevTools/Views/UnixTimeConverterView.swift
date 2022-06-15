//
//  UnixTimeConverterView.swift
//  DevTools
//
//  Created by Manikandan on 14/06/22.
//

import SwiftUI

struct UnixTimeConverterView: View {
    
    @State private var userInput: String = ""
    @State private var localTime: String = ""
    @State private var selectedType: String = "Unix Time milliseconds"
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                TextField(
                        "Unix Time input",
                        text: $userInput,
                        onEditingChanged: { (editingChanged) in
                            let date = Date(timeIntervalSince1970: Double(userInput) ?? 0)
                            let dateFormatter = DateFormatter()
                            dateFormatter.dateStyle = .medium
                            dateFormatter.timeStyle = .none
                            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
                            localTime = dateFormatter.string(from: date)
                                            },
                                            onCommit: {
                                                
                                        }
                )
                .onSubmit {
                    let date = Date(timeIntervalSince1970: 1415637900)
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateStyle = .medium
                    dateFormatter.timeStyle = .none
                    dateFormatter.dateFormat = "dd.MM.yy"
                    localTime = dateFormatter.string(from: date)
                }
                .frame(width: 200.0)
                    .disableAutocorrection(true)
                    .border(.secondary)
                
                Menu(selectedType) {
                    Button("Unix Time milliseconds", action: {
                        selectedType = "Unix Time milliseconds";
                    })
                    Button("Unix Time microseconds", action: {
                        selectedType = "Unix Time microseconds";
                    })
                }
                .frame(width: 200.0)
            }.padding()
        
            Divider()
            
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text("Local :")
                    HStack{
                        TextField(localTime, text: $localTime)
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
