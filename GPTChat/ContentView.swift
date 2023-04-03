////
////  ContentView.swift
////  GPTChat
////
////  Created by Bhumika Patel on 03/04/23.
////
//
//import SwiftUI
//
//struct ContentView: View {
////    @Environment(\.managedObjectContext) private var viewContext
////
////    @FetchRequest(
////        sortDescriptors: [NSSortDescriptor(keyPath: \DialogueData.date, ascending: false)],
////        animation: .default)
////    private var items: FetchedResults<DialogueData>
////    
////    @StateObject var configuration = AppConfiguration.shared
////    @State var dialogueSessions: [DialogueSession] = []
////    @State var selectedDialogueSession: DialogueSession?
////    
////    @State var isShowSettingView = false
////    
////    @State var isReplying = false
////    
////    @State private var columnVisibility = NavigationSplitViewVisibility.doubleColumn
//
//    var body: some View {
//        NavigationSplitView(columnVisibility: $columnVisibility) {
//            contentView()
//                .toolbar {
//#if os(iOS)
//                    ToolbarItem(placement: .automatic) {
//                        Button {
//                            isShowSettingView = true
//                        } label: {
//                            Image(systemName: "ellipsis.circle")
//                        }
//                    }
//#endif
//                    ToolbarItem(placement: .automatic) {
//                        Button {
//                            addItem()
//                        } label: {
//                            Image(systemName: "square.and.pencil")
//                        }
//                    }
//                }
//        } detail: {
//            ZStack {
//                if let selectedDialogueSession = selectedDialogueSession {
//                    MessageListView(session:selectedDialogueSession)
//                        .onReceive(selectedDialogueSession.$isReplying.didSet) { isReplying in
//                            self.isReplying = isReplying
//                        }
//                        .onReceive(selectedDialogueSession.$conversations.didSet) { conversations in
//                            if conversations.isEmpty {
//                                isReplying = true
//                                isReplying = false
//                            }
//                        }
//                }
//            }
//#if os(iOS)
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbarBackground(.visible, for: .navigationBar)
//#else
//            .frame(minWidth: 500)
//#endif
//        }
//        .navigationSplitViewStyle(.balanced)
//#if os(macOS)
//        .frame(minWidth: 800, minHeight: 500)
//        .background(.secondarySystemBackground)
//#else
//        .sheet(isPresented: $isShowSettingView) {
//            NavigationStack {
//                AppSettingsView(configuration: configuration)
//                    .navigationBarTitleDisplayMode(.inline)
//                    .toolbar {
//                        ToolbarItem {
//                            Button {
//                                isShowSettingView = false
//                            } label: {
//                                Text("Done")
//                                    .bold()
//                            }
//                        }
//                    }
//            }
//        }
//#endif
//        .onAppear() {
//            dialogueSessions = items.compactMap {
//                DialogueSession(rawData: $0)
//            }
//        }
//
//
//    }
//    
//    
////    @ViewBuilder
////    func contentView() -> some View {
////        if dialogueSessions.isEmpty {
////            DialogueListPlaceholderView()
////        } else {
////            DialogueSessionListView(
////                dialogueSessions: $dialogueSessions,
////                selectedDialogueSession: $selectedDialogueSession,
////                isReplying: $isReplying
////            ) {
////                deleteItems(offsets: $0)
////            } deleteDialogueHandler: {
////                deleteItem($0)
////            }
////        }
////    }
//
//
////    private func addItem() {
////        withAnimation {
////            do {
////                let session = DialogueSession()
////                dialogueSessions.insert(session, at: 0)
////                let newItem = DialogueData(context: viewContext)
////                newItem.id = session.id
////                newItem.date = session.date
////                newItem.configuration =  try JSONEncoder().encode(session.configuration)
////                try PersistenceController.shared.save()
////            } catch {
////                // Replace this implementation with code to handle the error appropriately.
////                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
////                let nsError = error as NSError
////                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
////            }
////        }
////    }
//
////    private func deleteItems(offsets: IndexSet) {
////        withAnimation {
////            dialogueSessions.remove(atOffsets: offsets)
////            offsets.map { items[$0] }.forEach(viewContext.delete)
////
////            do {
////                try PersistenceController.shared.save()
////            } catch {
////                // Replace this implementation with code to handle the error appropriately.
////                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
////                let nsError = error as NSError
////                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
////            }
////        }
////    }
////
////    private func deleteItem(_ session: DialogueSession) {
////        withAnimation {
////            dialogueSessions.removeAll {
////                $0.id == session.id
////            }
////            if let item = session.rawData {
////                viewContext.delete(item)
////            }
////
////            do {
////                try PersistenceController.shared.save()
////            } catch {
////                // Replace this implementation with code to handle the error appropriately.
////                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
////                let nsError = error as NSError
////                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
////            }
////        }
////    }
//    
//}
