import Foundation

class SignUpViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    @Published var alertMessage = ""
    @Published var showAlert = false

    private let fileName = "users.json"

    func handleSignUp() {
        print(username)
        guard !username.isEmpty, !email.isEmpty, !password.isEmpty, !confirmPassword.isEmpty else {
            alertMessage = "All fields are required."
            showAlert = true
            return
        }

        guard password == confirmPassword else {
            alertMessage = "Passwords do not match."
            showAlert = true
            return
        }

        saveUserToFile(username: username, email: email, password: password)
    }

    private func saveUserToFile(username: String, email: String, password: String) {
        let user = UserA(username: username, email: email, password: password)
        print("ALHAMDILAD")

        let fileManager = FileManager.default
        guard let documentDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else {
            print("damn")
            alertMessage = "Unable to access file directory."
            showAlert = true
            return
        }

        let fileURL = documentDirectory.appendingPathComponent(fileName)
        print(fileURL)
        // Read existing data if the file exists
        var users = [UserA]()
        if let data = try? Data(contentsOf: fileURL) {
            users = (try? JSONDecoder().decode([UserA].self, from: data)) ?? []
        }
        print(users)
        // Add the new user
        users.append(user)

        // Write data back to the file
        do {
            print("ALHAMDILAD")
            let jsonData = try JSONEncoder().encode(users)
            try jsonData.write(to: fileURL, options: .atomic)
            alertMessage = "Sign-Up Successful! User saved locally."
            showAlert = true
        } catch {
            alertMessage = "Failed to save user data: \(error.localizedDescription)"
            showAlert = true
        }
    }
}
