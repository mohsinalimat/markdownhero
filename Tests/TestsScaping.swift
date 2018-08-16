import XCTest
@testable import MarkdownHero

class TestsScaping:XCTestCase {
    func testScaping() {
        let parsed:NSAttributedString = Implementation().parse(string:"``` # *hello *world***```")
        XCTAssertEqual(parsed.string, " # *hello *world***", "Not scaped")
    }
    
    func testScapingWithPlain() {
        let parsed:NSAttributedString = Implementation().parse(string:"**Bold**``` # *hello *world***```\nPlain")
        XCTAssertEqual(parsed.string, "Bold # *hello *world***\nPlain", "Not scaped")
    }
    
    func testScapingLists() {
        let parsed:NSAttributedString = Implementation().parse(string:"```\n- list item```")
        XCTAssertEqual(parsed.string, "\n- list item", "Not scaped")
    }
}
