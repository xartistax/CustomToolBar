// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

enum Tab: String, CaseIterable {
    case home = "Home"
    case profile = "Profile"
    case favorites = "Favorites"
    case settings = "Settings"
    
    var systemImage: String {
        switch self {
        case .home:
            return "house"
        case .profile:
            return "person"
        case .favorites:
            return "star"
        case .settings:
            return "gear"
        }
    }
    
    var index : Int {
        return Tab.allCases.firstIndex(of: self) ?? 0
    }
}

@available(iOS 17.0, *)




public struct CustomToolBar: View {
    @State private var activTab: Tab = .home
    @Namespace private var animation
    
    @available(iOS 17.0.0, *)
    public var body: some View {
        
        VStack {
            TabView(selection: $activTab) {
                
                
                
                
                Text(Tab.home.rawValue)
                    .tag(Tab.home)
                    .toolbar(.hidden, for: .tabBar)
                
                
                Text(Tab.profile.rawValue)
                    .tag(Tab.profile)
                    .toolbar(.hidden, for: .tabBar)
                
                Text(Tab.favorites.rawValue)
                    .tag(Tab.favorites)
                    .toolbar(.hidden, for: .tabBar)
                
                Text(Tab.settings.rawValue)
                    .tag(Tab.settings)
                    .toolbar(.hidden, for: .tabBar)
                
            }
            
            CustomTabBar()
            
        }
        
    }
        
        
        
        @ViewBuilder
        func CustomTabBar(_ tint: Color = Color.green, _ inactiveTint: Color = .green) -> some View { 
            HStack( alignment: .bottom , spacing: 0) {
                
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    TabItem(
                        tint: tint,
                        interactiveTint: inactiveTint,
                        tab: tab,
                        animation: animation,
                        activeTab: $activTab
                    )
                }
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(content: {
                Rectangle()
                    .fill(.white)
                    .ignoresSafeArea()
                    .shadow(color: tint.opacity(0.2), radius: 5, x: 0, y: -0.5)
                    .blur(radius: 3.0)
                    .padding(.top, 25)
            })
            .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7), value: activTab )
        }
    
    
    
}

@available(iOS 17.0, *)
struct TabItem: View {
    var tint: Color
    var interactiveTint: Color
    var tab: Tab
    var animation : Namespace.ID
    @Binding var activeTab: Tab
    
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: tab.systemImage)
                .font(.title2)
                .foregroundColor(activeTab == tab ? .white : interactiveTint)
                .frame(width: activeTab == tab ? 58 : 35, height: activeTab == tab ? 58 : 35)
                .background {
                    if activeTab == tab {
                        Circle()
                            .fill(tint.gradient)
                            .matchedGeometryEffect( id: "ACTIVETAB", in: animation )
                    }
                }
            Text(tab.rawValue)
                .font(.caption)
                .foregroundColor(activeTab == tab ? tint : interactiveTint)
                
        }
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
        .onTapGesture {
            activeTab = tab
        }
    }
}
