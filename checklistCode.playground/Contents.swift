import UIKit

/ MARK:- Data Storage
func documentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}

func dataFilePath() -> URL {
    return documentsDirectory().appendingPathComponent("Checklists.plist")
}

func saveChecklistItems() {
    let encoder = PropertyListEncoder()
    do {
        let data = try encoder.encode(items)
        try data.write(to: dataFilePath(),
                       options: Data.WritingOptions.atomic)
    } catch {
        print("Error encoding item array: \(error.localizedDescription)")
    }
}

func loadChecklistItems() {
    let path = dataFilePath()
    if let data = try? Data(contentsOf: path) {
        let decoder = PropertyListDecoder()
        do {
            items = try decoder.decode([ChecklistItem].self, from: data)
        } catch {
            print("Error decoding item array: \(error.localizedDescription)")
        }
}
