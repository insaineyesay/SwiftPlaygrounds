import UIKit

var str = "Hello, playground"
let baseUrl = "https://api.themoviedb.org/3"
let apikey = "245205d674016c813d47ef97c3e3b2be"

struct TrendingItem: Codable {
    let id: Int?
    let video: Bool?
    let vote_count: Int?
    let vote_average: Double?
    let title: String?
    let release_date: String?
    let original_language: String?
    let genre_ids: [Int]?
    let background_path: String?
    let adult: Bool?
    let overview: String?
    let poster_path: String?
    let popularity: Double?
    let media_type: String?
    
    struct List: Codable {
        let results: [TrendingItem]
    }
}

enum TMNTError: Error {
    case noData
}

// specific, gets you the type you want
func fetchTMDBDMediaRequest(_ completion: @escaping ([TrendingItem]?, Error?) -> Void) {
    let url = baseUrl + "/trending/movie/week?api_key=" + apikey
    performRequest(urlString: url) { data, error in
        do {
            guard let data = data else { throw error ?? TMNTError.noData }
            
            let list = try decode(data, as: TrendingItem.List.self)
            completion(list.results, nil)
        } catch {
            completion(nil, error)
        }
    }
}

// general, just gets the raw data
func performRequest(urlString: String, completion: @escaping (Data?, Error?) -> Void) {
    // 1. Create a URL
    if let url = URL(string: urlString) {
        print("url = \(url)")
        // 2. Create a URL Session
        let session = URLSession(configuration: .default)
        // 3. Create a session task
        let task = session.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!)
                return completion(nil, error)
            }
            // success
            completion(data, nil)
        }
        // 4. Start the task
        task.resume()
    }
}

func decode<T: Decodable>(_ data: Data, as: T.Type) throws -> T {
    let decoder = JSONDecoder()
    do {
        let decodedData = try decoder.decode(T.self, from: data)
        print("SUCCESS", decodedData)
        return decodedData
    } catch {
        print("ERROR", error)
        throw error
    }
}

// example
fetchTMDBDMediaRequest {
    print($0, $1)
}
