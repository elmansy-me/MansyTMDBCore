public struct MansyTMDBCore {

    public static private(set) var APIKey: String = ""
    
    public static func configure(APIKey: String){
        self.APIKey = APIKey
    }
    
    public static var isConfigured: Bool{
        !APIKey.isEmpty
    }
}
