import UIKit

struct AuthResponse: Codable {
    var brand = "ANTHEM BCBS";
    var cacheData = 0;
    var error = 0;
    var firstName = "CHAD";
    var forceChangePassword = 0;
    var forceSetInitialTOU = 0;
    var forceSetLatestTOU = 0;
    var forceSetPreferences = 0;
    var forceSetQuestions = 0;
    var groupId = "CDHTST";
    var healthCardIdentifier = "117A72651";
    var jaaIndicator = 0;
    var lastName = "TEST";
    var medicare = 0;
    var memberSequenceNumber = 50;
    var mobileSessionId = "baa2f89d-ce41-40f8-ba2e-a901270b6785";
    var nmcPilotGroup = 0;
    var pharmacy = 1;
    var sessionIdentifier = "jbKNPtmBfbZjKjAYC9QyIL7hBEqKIsTwSqOY4PIOIlRzX1hAlbCCpEqL1LecoUjHlVILIvcb13MC8iinWTHDQ+yPo1XuDbJUJrz7fCJDmiwjBhHmsuFKI6Ylos4z1lXs9bsCa19wBW2TXxG2/prXP0qLNF/XhYURDC93edCoyjrDO4JvRg+NnsKpODjQ9Q8yv9AxX+fheyRYUHINMY502STH3N6ePJh18Mgof0qSG2hCRt21cZpgyoK9IDywW8bSyOeecUyxsaFLBBJJGJimSl/KV4qBVex29p2G3flwz981QPemCX8Er++5rdEkKcvaUwu9oPdXdQSGKsO1W4mq4mJjDNsRzHQc8uzsbqPKvOzEoRRWEKDuwKYSPaNw2Kzq2oIiVqIygGsNloablHL7dlw4W/aWWdLVjtfPJACP/KRc/lQd7mmC1/tBNyZ1Dni6TEN9LZlqLG/rvJFo495TLpkQlsq4tp9jnWH6TFuDmUkazpo5MMZhoa0FpntJKeW45ZMseY8MDGob9L0hfd1E8SG8HQtlrCPVbZomn3VXz9wnjABBcR/k2U0p5aB2Kervvh27WgMQ6s6/HJf9MFWxI7ZXwfZ8e3y6q6/l1W0HaOOg36fXASN9OcaLLi6/awfenv7hbLbHjyTrLH5z0akZutpQPVTjT/cC9tm3/tyisDk2NHMczAcNRbph3JdIRl8xbX85KF7Bk5RkIpFjnwsPDq0A8e96Y1xEgp86AaaoL8rfx8ml7et6LgcVKFlyS7rWbczM7k2BwwSTTL5Sd6WkiG7UohA7lY2bpSZPDVsT+GKlxriVadMcY2ZyCNQsSdXYlR8Ho9a2+bZxVl/4L01xTXulLax89jBeHj0ZAJvLUr8ndBQIIGu9y4j2aua2ZONDvwK37QYePgb5UvYeKwXBVqsoWYqwlLKoFBxg2nqBSpnz0VbQSjApgoWagD6SbH833HKNR4CdbDUYxGNpdYzfUTcbb/F+vuZOqIwhIM4keVXTWNvPpvTuJrjEtwpyJbX55lPmV7DTkl3EF6IWa9ox+pqdKONaW2pXxK7OU2ipmiGIfIaK1a2Rj40HJIvA+rb2pRTDZaRrh7o5+JvWiCexxE7K1U5E9Gbfm+RERzMi6J9Q14137vnGbH4yTPj2wamDO9qQdkBY0sDnDq3kdfOJfpTq0pEr3fJj8pCHsxK1op4GQEzTtKb0KrKl3/Tar8sDTkttOmCHBFNGpHAYbITgf/aKkFXam8LJc2hv0I+kw931kbvf6H9u59OwqYvQxzrj";
    var sourceSystem = "WGS20";
    var subscriber = 0;
    var updateMessage = "";
    var userName = "DEMO@HRA5";
    var userToken = "79b90f2e-b25c-45f8-a535-b3d4aa310611";
    var welcomeBackMessage = "Welcome back, Chad!";

}
let obj = AuthResponse()
var objArray = [Any]()
let mirror = Mirror(reflecting: obj)
for item in mirror.children {
    objArray.append(item.value)
    print("\(objArray)" )
}
