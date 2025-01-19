import Foundation

class LoginViewModel: ObservableObject {
    @Published var username = ""
    @Published var password = ""
    @Published var alertMessage = ""
    @Published var showAlert = false
    @Published var isAuthenticated = false

    private let fileName = "users.json"

    func handleLogin() {
        guard !username.isEmpty, !password.isEmpty else {
            alertMessage = "Please fill in all fields."
            showAlert = true
            return
        }

        guard let user = fetchUserFromFile(username: username, password: password) else {
            alertMessage = "Invalid username or password."
            showAlert = true
            return
        }

        // If login is successful
        isAuthenticated = true
        alertMessage = "Welcome, \(user.username)!"
        showAlert = true
    }

    private func fetchUserFromFile(username: String, password: String) -> UserA? {
        let fileManager = FileManager.default
        guard let documentDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else {
            alertMessage = "Unable to access file directory."
            showAlert = true
            return nil
        }

        let fileURL = documentDirectory.appendingPathComponent(fileName)

        // Read and decode the file
        guard let data = try? Data(contentsOf: fileURL),
              let users = try? JSONDecoder().decode([UserA].self, from: data) else {
            alertMessage = "No users found. Please sign up first."
            showAlert = true
            return nil
        }

        // Search for a matching user
        return users.first { $0.username == username && $0.password == password }
    }
}
