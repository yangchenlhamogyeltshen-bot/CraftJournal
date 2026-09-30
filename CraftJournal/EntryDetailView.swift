//
//  EntryDetailView.swift
//  CraftJournal
//
//  Created by iMac17 on 9/28/26.
//
import SwiftUI

struct EntryDetailView: View {
    @ObservedObject var entry: CraftEntry

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                if let data = entry.photo, let uiImage = UIImage(data: data) {
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }

                Text(entry.title ?? "Untitled")
                    .font(.largeTitle)
                    .bold()
                Text(entry.craftType ?? "")
                    .font(.title3)
                    .foregroundStyle(.secondary)

                if let date = entry.date {
                    Text(date, style: .date)
                }
                if let value = entry.notes, !value.isEmpty {
                    Text(value)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
