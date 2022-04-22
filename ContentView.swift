import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {

        ZStack {
            BackgroundImage()
            VStack {
                contents[0].image
                HStack {
                    NavigationLink(destination: MainPage(), label: {
                        Image("home")
                            .padding(.trailing, 30)
                    })
                    FiveByFiveSquares()
                    NavigationLink(destination: ContentViewN(), label: {
                        Image("next")
                            .padding(.leading, 30)
                    })
                }
            } // VStack
        }
        .onAppear(perform: {
            SoundSetting.instance.playBgm()
        })
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
                NavigationLink(destination: ContentViewD(), label: {
                    AnyButton(buttonText: "Next")
                        .padding(10)
                })
                Spacer()
            } // VStack
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
    }
}


struct ContentViewFinish: View {
    var body: some View {
        
        ZStack {
            BackgroundImage()
            VStack {
                Spacer()
                Image("conKorean")
                    .resizable()
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
    }
}
