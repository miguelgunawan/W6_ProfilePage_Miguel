import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack (alignment: .top) {
            Rectangle()
                .fill(Color.blue.opacity(0.2))
                .frame(width:400,height: 270) // Height of the header
                .cornerRadius(10)
                .clipped()
                
            CircleImageView(imageName: "people")
                .frame(width: 140, height: 140)
                .offset(y: 165)
        }
    }
}

struct CircleImageView: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Color.white.edgesIgnoringSafeArea(.all) // Background color

            VStack {
                HeaderView()
//                    .offset(y : -75)
                
                Text("@Miguel")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.top, 25)
                
                Text("Miguel Stanley G")
                    .font(.largeTitle)
                
                HStack {
                    Link("Malang", destination: URL(string: "https://www.google.com/maps/place/Malang")!)
                        .font(.subheadline)
                        .foregroundColor(.blue)
                    
                    Text(" |  Joined Oct 2024")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.top, 0)
                
                HStack(spacing: 10) {
                    Button(action: {
                        // Action for Follow
                    }) {
                        HStack {
                            Image(systemName: "person.fill")
                            Text("Follow")
                        }
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(8)
                    }
                    
                    Button(action: {
                        // Action for Messages
                    }) {
                        HStack {
                            Image(systemName: "envelope.fill")
                            Text("Message")
                        }
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(8)
                    }
                    
                    Button(action: {
                        // Action for More
                    }) {
                        HStack {
                            Image(systemName: "ellipsis")
                            Text("More")
                        }
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(8)
                    }
                }
                .padding(.top, 10)
                
                // Description
                    Text("CEO System D, Because your satisfaction is everything & Standing out from the rest, and that's what we want you to be as well.")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(width: 290, height: 83)
                        .padding(.horizontal,20)
                Divider()
                    .frame(height: 15)
                    .background(Color.gray.opacity(0.1))
                
                // Information
                VStack(alignment: .leading, spacing: 10) {
                    Text("Information")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.top, 15)
                    
                    InfoRow(label: "Website", placeholder: "www.miguel.com", icon: "globe")
                        .padding(.top, 8)
                    InfoRow(label: "Email", placeholder: "miguelgunawan@gmail.com", icon: "envelope.fill")
                        .padding(.top, 1)
                    InfoRow(label: "Phone", placeholder: "+62976239 6404", icon: "phone.fill")
                        .padding(.top, 1)
                    InfoRow(label: "Joined", placeholder: "25 Oct, 2024", icon: "calendar")
                        .padding(.top, 1)
                    
                    Divider().frame(height: 5)
                        .background(Color.gray.opacity(0.1))
                        .padding(.top, 8)
                    
                    // Design Buttons
                    HStack(spacing: 2) {
                        Button(action: {}) {
                            Text("UI Designer")
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(8)
                        }
                        
                        Button(action: {}) {
                            Text("UX Designer")
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(8)
                        }
                        
                        Button(action: {}) {
                            Text("Design System")
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(8)
                        }
                    }
                    .padding(.top, 8)

                    HStack(spacing: 2){
                        Button(action: {}) {
                            Text("Product")
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(8)
                        }
                        
                        Button(action: {}) {
                            Text("Successful")
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(8)
                        }
                    }
                }
                .padding(.horizontal, 15)
            }
            .padding()
            .offset(y:-84)
        }
    }
}

struct InfoRow: View {
    var label: String
    var placeholder: String
    var icon: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.gray) // Set icon color to gray
            
            Text(label)
                .font(.subheadline)
                .foregroundColor(.gray) // Set label text color to gray
            
            Spacer()
            
            Text(placeholder)
                .font(.subheadline)
                .foregroundColor(.black) // Set placeholder text color to black
        }
        .padding(.top, 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
