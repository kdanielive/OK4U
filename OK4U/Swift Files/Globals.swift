//
//  Globas.swift
//  OK4U
//
//  Created by Daniel Kim on 11/13/19.
//  Copyright © 2019 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit

var unfurl_upcoming = true

let eventImages = ["ok20191", "newscardtestimage"]
let eventDescription = """
매년 여러분의 허기를 책임지는 옼식당이 올핸 좀 더 일찍 찾아왔습니다. 다음 주 토요일 (11/23) 오케이와 초특급 게스트 김승용(승솊)이 직접 요리해 제대로 된 한 끼 책임지겠습니다. 벌써 추운 날씨 옼식당에 와서 배부르게 먹고 마시고 따듯하게 놀다 가세요!!
+
Esther Formula와 함께하는 옼! 개이득! 이벤트
음식과 술을 물론 추첨을 통해 여러분의 🏋🏻‍♀️건강을 책임질 상품들도🏋🏻‍♂️ 얻어가세요!! *50명 한정이니 빠르게 RSVP ㄱㄱ*

Date: 11/23 (토) 7:00-11:00 PM
Location: 91 E 3rd Street, NY
Ticket: Regular - $25, At the door - $30
RSVP Link in Bio
"""

var events = [Event]()

var primaryEvent:Event?

var eventRowId:Int?

var loadEvents = true

let buildingsDict = [
    "Alpha Chi Omega (536 West 114th Street)" : (40.806081,-73.963707),
    "Alpha Delta Phi (526 West 114th Street)" : (40.805961,-73.963391),
    "Alpha Epsilon Pi (546 West 113th Street)" : (40.806221,-73.964024),
    "Armstrong Hall": (40.805370,-73.965300),
    "Avery Hall": (40.808246,-73.960949),
    "Baker Field Athletic Complex": (40.872280,-73.916790),
    "Broadway Residence Hall": (40.806165, -73.964886),
    "Buell Hall": (40.807668, -73.961421),
    "Butler Library": (40.806180, -73.963330),
    
    
]
