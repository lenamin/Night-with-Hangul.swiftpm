import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {

        ZStack {
            BackgroundImage()
            VStack {
                contents[0].image
                
                FiveByFiveSquares()
                    .padding(.vertical, 20)
                HStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    NavigationLink(destination: MainPage().navigationBarBackButtonHidden(true), label: {
                        Image("home")
                            .padding(.trailing, 30)
                    
                    }
                    ).navigationBarTitleDisplayMode(.inline)
                    Spacer()
                    NavigationLink(destination: ContentViewN(), label: {
                        Image("next")
                            .padding(.leading, 30)
                    }).navigationBarTitleDisplayMode(.inline)
                    Spacer()
                    Spacer()
                    Spacer()
                }
                
            } // VStack
        }
        
        .onAppear {
            IsViewExist.view.isViewG = true
            SoundSetting.instance.playBgm()
        }

    }
}

struct ContentViewN: View {

    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                contents[1].image
                FiveByFiveSquares()
                Spacer()
                NavigationLink(destination: ContentViewD().navigationBarHidden(true), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                }).navigationBarTitleDisplayMode(.inline)
                Spacer()
            } // VStack
        }
        .onAppear {
            IsViewExist.view.isViewG = false
            IsViewExist.view.isViewN = true
        }
    }
}

struct ContentViewD: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                contents[2].image
                FiveByFiveSquares()
                Spacer()
                NavigationLink(destination: ContentViewL(), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                })
                Spacer()
            } // VStack
        }
        .onAppear {
            IsViewExist.view.isViewN = false
            IsViewExist.view.isViewD = true
        }
    }
}

struct ContentViewL: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                contents[3].image
                FiveByFiveSquares()
                Spacer()
                NavigationLink(destination: ContentViewM(), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                })
                Spacer()
            } // VStack
        }
        .onAppear {
            IsViewExist.view.isViewD = false
            IsViewExist.view.isViewL = true
        }
    }
}

struct ContentViewM: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                contents[4].image
                FiveByFiveSquares()
                Spacer()
                NavigationLink(destination: ContentViewB(), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                })
                Spacer()
            } // VStack
        }
        .onAppear {
            IsViewExist.view.isViewL = false
            IsViewExist.view.isViewM = true
        }
    }
}

struct ContentViewB: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                contents[5].image
                FiveByFiveSquares()
                Spacer()
                NavigationLink(destination: ContentViewS(), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                })
                Spacer()
            } // VStack
        }
        .onAppear {
            IsViewExist.view.isViewM = false
            IsViewExist.view.isViewB = true
        }
    }
}

struct ContentViewS: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                contents[6].image
                FiveByFiveSquares()
                Spacer()
                NavigationLink(destination: ContentViewO(), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                })
                Spacer()
            } // VStack
        }
        .onAppear {
            IsViewExist.view.isViewB = false
            IsViewExist.view.isViewS = true
        }
    }
}

struct ContentViewO: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                contents[7].image
                FiveByFiveSquares()
                Spacer()
                NavigationLink(destination: ContentViewJ(), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                })
                Spacer()
            } // VStack
        }
        .onAppear {
            IsViewExist.view.isViewS = false
            IsViewExist.view.isViewO = true
        }
    }
}

struct ContentViewJ: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                contents[8].image
                FiveByFiveSquares()
                Spacer()
                NavigationLink(destination: ContentViewCh(), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                })
                Spacer()
            } // VStack
        }
        .onAppear {
            IsViewExist.view.isViewO = false
            IsViewExist.view.isViewJ = true
        }
    }
}

struct ContentViewCh: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                contents[9].image
                FiveByFiveSquares()
                Spacer()
                NavigationLink(destination: ContentViewK(), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                })
                Spacer()
            } // VStack
        }
        .onAppear {
            IsViewExist.view.isViewJ = false
            IsViewExist.view.isViewCh = true

        }
    }
}

struct ContentViewK: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                contents[10].image
                FiveByFiveSquares()
                Spacer()
                NavigationLink(destination: ContentViewT(), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                })
                Spacer()
            } // VStack
            .onAppear {
                IsViewExist.view.isViewCh = false
                IsViewExist.view.isViewK = true
            }
        }
    }
}

struct ContentViewT: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                contents[11].image
                FiveByFiveSquares()
                Spacer()
                NavigationLink(destination: ContentViewP(), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                })
                Spacer()
            } // VStack
        }
        .onAppear {
            IsViewExist.view.isViewK = false
            IsViewExist.view.isViewT = true
        }
    }
}

struct ContentViewP: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                contents[12].image
                FiveByFiveSquares()
                Spacer()
                NavigationLink(destination: ContentViewH(), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                })
                Spacer()
            } // VStack
        }
        .onAppear {
            IsViewExist.view.isViewT = false
            IsViewExist.view.isViewP = true
        }
    }
}

struct ContentViewH: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                contents[13].image
                FiveByFiveSquares()
                Spacer()
                NavigationLink(destination: ContentViewFinish(), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                })
                Spacer()
            } // VStack
        }
        .onAppear {
            IsViewExist.view.isViewP = false
            IsViewExist.view.isViewH = true
        }
    }
}


struct ContentViewFinish: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                Image("conKorean")
                    .scaledToFit()
                    .padding(.horizontal, 30)
                    .padding(.top, 30)
                Image("Congratulations")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 40)
                Rabbit()
                
                Spacer()

            } // VStack
        }
    }
}

// rabbit
struct Rabbit: View {
    var body: some View {
        Image("rabbit-final")
            .resizable()
            .scaledToFit()
            .frame(width: 100)
            .padding(10)
    }
}

struct Title: View {
    var body: some View {
        Image("nightWithHangeulfinal")
            .padding(10)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
