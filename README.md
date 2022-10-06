# refreshable-bug

Adding a RefreshAction via the `.refreshable` modifier sets its value in @Environment(\.refresh).
Some views are reading this value and change their appearance based off of it (e.g showing and allowing for pull to refresh).
`@Enviromnent(\.refresh)` does not a expose a WritableKeyPath so there is no way of overriding it further down in the view hierarchy.
