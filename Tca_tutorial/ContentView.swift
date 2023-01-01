import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    private let readMe = "Single Counter with TCA"
    var body: some View {
        Form {
            Section(header: Text(readMe)) {
                CounterView(
                    store: Store(
                        initialState: CounterState(),
                        reducer: counterReducer,
                        environment: CounterEnvironment()
                    ),
                    label: "Counter"
                )
                .buttonStyle(.borderless)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .navigationTitle("SimpleCounter")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
