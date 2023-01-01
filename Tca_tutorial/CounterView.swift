import SwiftUI
import ComposableArchitecture

struct CounterView: View {
    let store: Store<CounterState, CounterAction>
    var label: String

    var body: some View {
        WithViewStore(self.store) { viewStore in
            HStack {
                Text("\(label):")
                    .padding()
                    .font(.subheadline)
                Button("-") { viewStore.send(.decrementButtonTapped)}
                Text("\(viewStore.count)")
                    .font(.body.monospacedDigit())
                Button("+") { viewStore.send(.incrementButtonTapped)}
            }
        }
    }
}
