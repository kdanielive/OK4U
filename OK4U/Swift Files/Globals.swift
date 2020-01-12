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
    "Carman Hall": (40.806458, -73.963867),
    "Center for Engineering & Physical Science Research (CEPSR)": (40.809520, -73.960876),
    "Chandler Laboratories": (40.809578, -73.962205),
    "Columbia Alumni Center": (40.806545, -73.966553),
    "Computer Science": (40.808965, -73.959997),
    "Delta Gamma (552 West 113th Street)": (40.805593, -73.964495),
    "Dodge Hall": (40.807975, -73.963047),
    "Dodge Physical Fitness Center": (40.809106, -73.961828),
    "Earl Hall": (40.808513, -73.962521),
    "East Campus": (40.806925, -73.959147),
    "Faculty House": (40.806559, -73.959318),
    "Fairchild": (40.808991, -73.960625),
    "Fayerweather Hall": (40.808135,-73.960547),
    "Furnald": (40.807350, -73.963796),
    "Hartley": (40.806433, -73.961744),
    "Hamilton": (40.806774, -73.961738),
    "Heyman Center": (40.807479, -73.958888),
    "Hogan": (40.806321, -73.964684),
    "International Affairs": (40.807733, -73.960128)
    "Jerome Greene": (40.806760, -73.960501),
    "John Jay": (40.806005, -73.962283),
    "Journalism": (40.807550, -73.963545),
    "Kappa Alpha Theta (534 West 114th Street)": (40.806065, -73.963639),
    "Kappa Delta Rho (548 West 114th Street)": (40.806252, -73.964057),
    "Kent": (40.807359, -73.961686),
    
]

let temp = """
Greene Annex
Greenhouse Nursery
Hartley
Havemeyer Extension
Havemeyer Hall
Heyman Center
Hogan
Horace Mann
Interchurch Center
Intercultural Resource Center (552 West 114th Street)
International Affairs
International Affairs Extension
International House
Jerome Greene
Jerome Greene Annex (Law School)
Jerome Greene Hall (Law School)
John Jay
Journalism
Kappa Alpha Theta (534 West 114th Street)
Kappa Delta Rho (548 West 114th Street)
Kent
Knox Hall
Kraft Center
Lerner Hall
Lewisohn
Low Library
Mathematics
McBain
McVickar Hall
Mudd
Northwest Corner Building
Philosophy
Prentis Hall
President's House
Psi Upsilon (542 West 114th Street)
Pupin
River
Ruggles
Schapiro
Schapiro CEPSR
Schermerhorn
Schermerhorn Extension
School of Social Work
Service Building
Shapiro Theater
Sigma Chi (523 West 113th Street)
Sigma Delta Tau (540 West 114th Street)
Sigma Nu (556 West 113th Street)
Sigma Phi Epsilon (550 West 113th Street)
St. Paul's Chapel
The School at Columbia
University Hall
Uris
Wallach
Watson
Watt
Wien
William & June Warren (Business Law)
William C. Warren Hall
Woodbridge
Zeta Psi (531 West 113th Street)

Specs
"""
