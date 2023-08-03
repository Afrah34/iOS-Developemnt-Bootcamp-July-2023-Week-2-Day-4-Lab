//
//  ContentView.swift
//  Projectweek2Lab4
//
//  Created by Afrah Faisal on 16/01/1445 AH.
//

import SwiftUI


struct ContentView: View {

    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationStack{
            VStack{
                Text("")
                    .font(.system(.largeTitle))
                HStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    
                    NavigationLink(destination:
                                    {
                        Form{
                            NavigationLink(destination: {
                                List{
                                    Text(" Russia")
                                    Text(" Brazil")
                                    Text(" India")
                                    Text("Argentina")
                                    Text("Saudi Arabia")
                                    Text(" France ")
                                }
                            },
                                           label: {
                                Text("Name Countries")
                                
                            })}
                    }, label: {
                        Text("Countries of the World")
                        
                    })
                }
                Form {
                    TextField(text: $email, prompt: Text("email")) {
                        //Text("email")
                    }
                    SecureField(text: $password, prompt: Text("Password")) {
                        //Text("Password")
                    }
                    Button(action: {
                        if validateForm() {
                            // Form is valid, submit
                        } else {
                            // Form is invalid, show error
                        }
                    }) {
                        Text("Submit")
                    }
                    Spacer()
                    TabView{
                        Text("")
                            .tabItem {
                                Label("Home", systemImage: "house")
                            }
                        Text("")
                            .tabItem {
                                Label("person", systemImage: "person.crop.circle.dashed")
                            }
                            .padding()
                            .navigationTitle("Countries")
                    }
                    
                }
            }
        }
    }
    func validateForm() -> Bool {
        if password.isEmpty || !email.contains("@") {
          return false
        }
        return true
      }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
