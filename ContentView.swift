//
//  ContentView.swift
//  reworkWidgets
//
//  Created by Даниил Ледник on 02.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                HeaderView()
                Spacer()
            }
            VStack(spacing: 20) {
                HStack {
                    DeviceView(device: "Apple Watch", price: "500$", textColor: .white, bgColor: .gray)
                    ZStack {
                        DeviceView(device: "Iphone", price: "999$", textColor: .orange, bgColor: .green)
                        SmallLabelView()
                    }
                }
                .padding(.horizontal)
                ZStack {
                    DeviceView(device: "MacBook", price: "1499$", textColor: .white, bgColor: .black)
                    Image(systemName: "macbook")
                        .font(.title)
                        .foregroundStyle(.white)
                        .offset(x: 0, y: -70)
                }
                .padding(.horizontal)
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Выберите ваш девайс")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
                .padding(.leading)
            Text("Ваш девайс")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
                .padding(.leading)
        }
    }
}

struct DeviceView: View {
 // Добавляем новые свойства нашей структуре
 var device: String
 var price: String
 var textColor: Color
 var bgColor: Color

 var body: some View {
  VStack {
   // Название девайса
   Text(device)
    .font(.system(.title, design: .rounded))
    .fontWeight(.black)
   // Цвет текста
    .foregroundColor(textColor)
    .minimumScaleFactor(0.5)
   // Цена девайса
   Text(price)
    .font(.system(size: 40, weight: .heavy, design: .rounded))
   // Цвет текста
    .foregroundColor(textColor)
    .minimumScaleFactor(0.5)
   Text("Series X")
    .font(.headline)
   // Цвет текста
    .foregroundColor(textColor)
  }
  .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: 140)
  .padding(40)
  // Цвет фона
  .background(bgColor)
  .cornerRadius(10)
 }
}

struct SmallLabelView: View {
    var body: some View {
        Text("Лучшее для фотографов")
            .font(.system(.caption, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(5)
            .background(.orange)
            .offset(x: 0, y: 110)
    }
}

