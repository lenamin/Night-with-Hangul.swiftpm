import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[0].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: MainPage().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)

                        NavigationLink(destination: ContentViewN().navigationBarBackButtonHidden(true), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
        
        .onAppear {
            IsViewExist.view.isViewG = true
            SoundSetting.instance.playBgm()
        }
    }
}

struct ContentViewN: View {

    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[1].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)
                        NavigationLink(destination: ContentViewD().navigationBarBackButtonHidden(true), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
   
        .onAppear {
            IsViewExist.view.isViewG = false
            IsViewExist.view.isViewN = true
        }
    }
}

struct ContentViewD: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[2].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: ContentViewN().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)
                        NavigationLink(destination: ContentViewL().navigationBarBackButtonHidden(true), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
        .onAppear {
            IsViewExist.view.isViewN = false
            IsViewExist.view.isViewD = true
        }
    }
}

struct ContentViewL: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[3].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: ContentViewD().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)
                        NavigationLink(destination: ContentViewM().navigationBarBackButtonHidden(true), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
        .onAppear {
            IsViewExist.view.isViewD = false
            IsViewExist.view.isViewL = true
        }
    }
}

struct ContentViewM: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[4].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: ContentViewL().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)
                        
                        NavigationLink(destination: ContentViewB().navigationBarBackButtonHidden(true), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
        .onAppear {
            IsViewExist.view.isViewL = false
            IsViewExist.view.isViewM = true
        }
    }
}

struct ContentViewB: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[5].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: ContentViewM().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)
                        NavigationLink(destination: ContentViewS().navigationBarBackButtonHidden(true), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
        .onAppear {
            IsViewExist.view.isViewM = false
            IsViewExist.view.isViewB = true
        }
    }
}

struct ContentViewS: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[6].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: ContentViewB().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)
                        NavigationLink(destination: ContentViewO().navigationBarBackButtonHidden(true), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
        .onAppear {
            IsViewExist.view.isViewB = false
            IsViewExist.view.isViewS = true
        }
    }
}

struct ContentViewO: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[7].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: ContentViewS().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)
                        NavigationLink(destination: ContentViewJ().navigationBarBackButtonHidden(true), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
        .onAppear {
            IsViewExist.view.isViewS = false
            IsViewExist.view.isViewO = true
        }
    }
}

struct ContentViewJ: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[8].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: ContentViewO().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)
                        NavigationLink(destination: ContentViewCh().navigationBarBackButtonHidden(true), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
        .onAppear {
            IsViewExist.view.isViewO = false
            IsViewExist.view.isViewJ = true
        }
    }
}

struct ContentViewCh: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[9].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: ContentViewJ().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)
                        NavigationLink(destination: ContentViewK().navigationBarBackButtonHidden(true), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
        .onAppear {
            IsViewExist.view.isViewJ = false
            IsViewExist.view.isViewCh = true

        }
    }
}

struct ContentViewK: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[10].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: ContentViewCh().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)
                        NavigationLink(destination: ContentViewT().navigationBarBackButtonHidden(true), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
        .onAppear {
            IsViewExist.view.isViewCh = false
            IsViewExist.view.isViewK = true
        }
    }
}

struct ContentViewT: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[11].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: ContentViewK().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)
                        NavigationLink(destination: ContentViewP().navigationBarBackButtonHidden(true), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
        .onAppear {
            IsViewExist.view.isViewK = false
            IsViewExist.view.isViewT = true
        }
    }
}

struct ContentViewP: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[12].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: ContentViewT().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)
                        NavigationLink(destination: ContentViewH().navigationBarBackButtonHidden(true), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
        .onAppear {
            IsViewExist.view.isViewT = false
            IsViewExist.view.isViewP = true
        }
    }
}

struct ContentViewH: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Spacer(minLength:geometry.size.height / 20)
                    contents[13].image
                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.2, alignment: .center)
                    FiveByFiveSquares()
                    HStack {
                        NavigationLink(destination: ContentViewP().navigationBarBackButtonHidden(true), label: {
                            Image("previous")
                                .padding(.trailing, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)

                        }
                        ).navigationBarTitleDisplayMode(.inline)
                        NavigationLink(destination: ContentViewFinish(), label: {
                            Image("next")
                                .padding(.leading, geometry.size.width * 0.1)
                                .padding(.vertical, geometry.size.height * 0.03)
                        }).navigationBarTitleDisplayMode(.inline)
                    } // HStack
                    Spacer(minLength:geometry.size.height / 20)
                } // VStack
            } // ZStack
        } // Geometry
        .onAppear {
            IsViewExist.view.isViewP = false
            IsViewExist.view.isViewH = true
        }
    }
}


struct ContentViewFinish: View {
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                Image("sky-pad")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geometry.size.width * 1.001, height: geometry.size.height * 1.03)
                VStack {
                    Image("rabbit-final")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.2)
                    Image("conKorean")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.6)
                        .padding(.horizontal, 30)
                        .padding(.top, 30)
                    Image("Congratulations")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.8)
                        .padding(.horizontal, 40)

                } // VStack
                .frame(width: geometry.size.width, height: geometry.size.height)
            } //ZStack
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
        ContentViewFinish()
            .previewInterfaceOrientation(.portraitUpsideDown)

    }
}
