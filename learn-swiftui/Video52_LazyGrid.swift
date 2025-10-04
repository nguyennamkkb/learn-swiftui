//
//  Video52_LazyGrid.swift
//  learn-swiftui
//
//  Created by Mac mini on 4/10/25.
//

import SwiftUI

struct Video52_LazyGrid: View {
    private let items = (1 ... 50).map { "Item \($0)" }

    private var columns: [GridItem] {
        //    GridItem(.flexible(maximum: 50)),
        //        GridItem(.flexible()),

        //        GridItem(.fixed(100)),
        //        GridItem(.fixed(100)),
        //        GridItem(.fixed(50)),

        //        GridItem(.adaptive(minimum: 50, maximum: 100)),
        //        GridItem(.adaptive(minimum: 100, maximum: 150))

        Array(repeating: GridItem(.flexible()), count: isMulticolumn ? 2 : 1)
    }

    @State private var isMulticolumn = false

    var body: some View {
//        vgrid
//        hgrid

        ScrollView {
            Button {
                isMulticolumn.toggle()
            } label: {
                Image(systemName: isMulticolumn ? "rectangle.grid.1x2" : "rectangle.grid.2x2")
                    .symbolVariant(.fill)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding()
            
            LazyVGrid(columns: columns, alignment: .trailing,
                      spacing: 16) {
                ForEach(0 ... 50, id: \.self) { _ in
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.mint)
                        .frame(height: isMulticolumn ? 100 : 250)
                }
            }
        }
        .animation(.spring, value: isMulticolumn)
        .padding(8)
    }

    var hgrid: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: columns, alignment: .top, spacing: 32, pinnedViews: .sectionHeaders) {
                Section {
                    ForEach(items, id: \.self) { item in
                        Text(item)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 50)
                            .background(
                                .blue,
                                in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                            )
                    }
                } header: {
                    Text("Header 1")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            .red,
                            in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                        )
                }

                Section {
                    ForEach(items, id: \.self) { item in
                        Text(item)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 50)
                            .background(
                                .blue,
                                in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                            )
                    }
                } header: {
                    Text("Header 2")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            .green,
                            in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                        )
                }
            }
        }
    }

    var vgrid: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .trailing, spacing: 32, pinnedViews: .sectionHeaders) {
                Section {
                    ForEach(items, id: \.self) { item in
                        Text(item)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 50)
                            .background(
                                .blue,
                                in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                            )
                    }
                } header: {
                    Text("Header 1")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            .red,
                            in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                        )
                }

                Section {
                    ForEach(items, id: \.self) { item in
                        Text(item)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 50)
                            .background(
                                .blue,
                                in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                            )
                    }
                } header: {
                    Text("Header 2")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            .green,
                            in: RoundedRectangle(cornerRadius: 8, style: .continuous)
                        )
                }
            }
        }
    }
}

#Preview {
    Video52_LazyGrid()
}
