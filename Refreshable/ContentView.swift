//
//  ContentView.swift
//  Refreshable
//
//  Created by Niklas Hein on 05.10.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		List {
			HorizontalScroll()
		}
		.refreshable {
			print("refreshing")
		}
		.listStyle(.plain)
    }
}

struct HorizontalScroll: View {
	let colors: [Color] = [
		.red,
		.orange,
		.yellow,
		.green,
		.mint,
		.teal,
		.cyan,
		.blue,
		.indigo,
		.purple,
		.pink,
		.brown
	]

	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			HStack {
				ForEach(colors, id: \.description) { color in
					RoundedRectangle(cornerRadius: 20, style: .continuous)
						.foregroundStyle(color)
						.frame(width: 50, height: 50)
				}
			}
			.padding(.vertical)
		}
		.background(.tertiary)
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
