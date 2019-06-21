//
//  MovieKeywordList.swift
//  MovieSwift
//
//  Created by Thomas Ricouard on 16/06/2019.
//  Copyright © 2019 Thomas Ricouard. All rights reserved.
//

import SwiftUI

struct MovieKeywordList : View {
    @EnvironmentObject var store: AppStore
    let keyword: Keyword
    
    var body: some View {
        MoviesList(movies: store.state.moviesState.withKeywords[keyword.id] ?? [], displaySearch: false)
            .navigationBarTitle(Text(keyword.name.capitalized))
            .onAppear {
                self.store.dispatch(action: MoviesActions.FetchMovieWithKeywords(keyword: self.keyword.id))
        }
    }
}

#if DEBUG
struct MovieKeywordList_Previews : PreviewProvider {
    static var previews: some View {
        MovieKeywordList(keyword: Keyword(id: 0, name: "Test"))
    }
}
#endif
