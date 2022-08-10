//
//  ContentView.swift
//  WordleClone
//
//  Created by Max Kup on 08.08.2022.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject var dm: WordleDataModel
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    Spacer()
                    VStack(spacing: 3) {
                        ForEach(0...5, id: \.self) { index in
                            GuessView(guess: $dm.guesses[index])
                                .shake(animatableData: CGFloat(dm.incorrectAttempts[index]))
                        }
                    }
                    .frame(width: Global.boardWidth, height: 6 * Global.boardWidth / 5)
                    Spacer()
                    Keyboard()
                        .scaleEffect(Global.keyboardScale)
                        .padding(.top)
                    Spacer()
                }
                .disabled(dm.showStats)
                .navigationBarTitleDisplayMode(.inline)
                .overlay(alignment: .top) {
                    if let toastText = dm.toastText {
                        ToastView(toastText: toastText)
                            .offset(y: 20)
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        HStack {
                            if !dm.inPlay {
                                Button {
                                    dm.newGame()
                                } label: {
                                    Text("New")
                                        .foregroundColor(.primary)
                                }
                            }
                            Button {
                                //MARK: - TODO
                            } label: {
                                Image(systemName: "questionmark.circle")
                            }
                        }
                    }
                    
                    ToolbarItem(placement: .principal) {
                        Text("WORDLE")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.primary)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Button {
                                withAnimation {
                                    dm.showStats.toggle()
                                    print(dm.showStats)
                                }
                            } label: {
                                Image(systemName: "chart.bar")
                            }
                            Button {
                                // TODO: - settings
                            } label: {
                                Image(systemName: "gearshape.fill")
                            }
                        }
                    }
                }
            }
            if dm.showStats {
                StatsView()
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .environmentObject(WordleDataModel())
    }
}
