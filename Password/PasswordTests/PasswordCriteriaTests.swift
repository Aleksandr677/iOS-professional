//
//  PasswordCriteriaTests.swift
//  PasswordTests
//
//  Created by Александр Христиченко on 21.05.2022.
//

import XCTest

@testable import Password

class PasswordLengthCriteriaTests: XCTestCase {

    // Boundary conditions 8-32
    
    func testShort() throws {
        XCTAssertFalse(PasswordCriteria.lengthCriteriaMet("1234567"))
    }

    func testLong() throws {
        // 🕹
        XCTAssertFalse(PasswordCriteria.lengthCriteriaMet("1234556252465768595452343421234343523554532432423423"))
    }
    
    func testValidShort() throws {
        // 🕹
        XCTAssertTrue(PasswordCriteria.lengthAndNoSpaceMet("12345678"))
    }

    func testValidLong() throws {
        // 🕹
        XCTAssertTrue(PasswordCriteria.lengthCriteriaMet("12345678123456781234567812345678"))
    }
}

class PasswordSpaceCriteriaTests: XCTestCase {
    func testSpaceMet() throws {
        XCTAssertTrue(PasswordCriteria.noSpaceCriteriaMet("abc"))
    }
    
    func testSpaceNotMet() throws {
        XCTAssertFalse(PasswordCriteria.noSpaceCriteriaMet("aa cn"))
    }
}

class PasswordSpaceAndLengthCriteriaTests: XCTestCase {
    func testSpaceAndLengthMet() throws {
        XCTAssertTrue(PasswordCriteria.lengthAndNoSpaceMet("qasd123785"))
    }
    
    func testSpaceAndLengthNotMet() throws {
        XCTAssertFalse(PasswordCriteria.lengthAndNoSpaceMet("aa1 cn"))
    }
}

class PasswordUpperCaseCriteriaTests: XCTestCase {
    func testUpperCaseMet() throws {
        XCTAssertTrue(PasswordCriteria.uppercaseMet("qasd123785Q"))
    }
    
    func testUpperCaseNotMet() throws {
        XCTAssertFalse(PasswordCriteria.uppercaseMet("ad1cn"))
    }
}

class PasswordLowerCaseCriteriaTests: XCTestCase {
    func testLowerCaseMet() throws {
        XCTAssertTrue(PasswordCriteria.lowercaseMet("12QQQQQQQQQQqQ"))
    }
    
    func testLowerCaseNotMet() throws {
        XCTAssertFalse(PasswordCriteria.lowercaseMet("123AQWEDSFSA"))
    }
}

class PasswordDigitCaseCriteriaTests: XCTestCase {
    func testDigitCaseMet() throws {
        XCTAssertTrue(PasswordCriteria.digitMet("1QQQQQQQQqQ"))
    }
    
    func testDigitCaseNotMet() throws {
        XCTAssertFalse(PasswordCriteria.digitMet("asdfAQWSFSA"))
    }
}

class PasswordSpecialCaseCriteriaTests: XCTestCase {
    func testSpecialCaseMet() throws {
        XCTAssertTrue(PasswordCriteria.specialCharacterMet("!1QQQQQQQQqQ"))
    }
    
    func testSpecialCaseNotMet() throws {
        XCTAssertFalse(PasswordCriteria.specialCharacterMet("asdfAQWSFSA"))
    }
}
