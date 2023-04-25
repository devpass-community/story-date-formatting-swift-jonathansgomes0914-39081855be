import Foundation

@main
public struct DateFormatting {
    let formatter = DateFormatter()
    let dateFormat =  "dd/MM/yyyy"

    public static func main() {
        print(DateFormatting().formatDate(date: Date()))
    }

    func formatDate(date: Date) -> String {
        formatter.dateFormat = dateFormat
        return formatter.string(from: date)
    }

    func dateFromString(dateString: String) -> Date? {
        formatter.dateFormat = dateFormat
        return formatter.date(from: dateString)
    }
}
