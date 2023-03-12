/*
 2469. Convert the Temperature

 You are given a non-negative floating point number rounded to two decimal places celsius, that denotes the temperature in Celsius.

 You should convert Celsius into Kelvin and Fahrenheit and return it as an array ans = [kelvin, fahrenheit].

 Return the array ans. Answers within 10-5 of the actual answer will be accepted.

 Note that:

 Kelvin = Celsius + 273.15
 Fahrenheit = Celsius * 1.80 + 32.00

 Example 1:

 Input: celsius = 36.50
 Output: [309.65000,97.70000]
 Explanation: Temperature at 36.50 Celsius converted in Kelvin is 309.65 and converted in Fahrenheit is 97.70.

 Example 2:

 Input: celsius = 122.11
 Output: [395.26000,251.79800]
 Explanation: Temperature at 122.11 Celsius converted in Kelvin is 395.26 and converted in Fahrenheit is 251.798.

 Constraints:

 0 <= celsius <= 1000
 */

import XCTest

class Solution {
    /**
      Converts temperature from Celsius to Kelvin and Fahrenheit.

      This function takes a temperature value in Celsius and returns an array of two values: the temperature in Kelvin and Fahrenheit. The formula used for the conversion is as follows:
      - Kelvin = Celsius + 273.15
      - Fahrenheit = Celsius * 1.8 + 32

      - Parameter celsius: The temperature value in Celsius to be converted.
      - Returns: An array containing the temperature in Kelvin and Fahrenheit, in that order.
      - Note: This function assumes that the input value is in Celsius.
      - Warning: The Fahrenheit conversion formula may produce floating point rounding errors.
    */

    func convertTemperature(_ celsius: Double) -> [Double] {
        [celsius + 273.15, celsius * 1.80 + 32.00]
    }
}

class SolutionTests: XCTestCase {

    func testConvertTemperature() {
        let solution = Solution()
        let input = 25.0 // 25 degrees Celsius
        let expectedOutput = [298.15, 77.0] // 298.15 Kelvin and 77 Fahrenheit
        XCTAssertEqual(solution.convertTemperature(input), expectedOutput)
    }

    func testConvertTemperatureNegative() {
        let solution = Solution()
        let input = -10.0 // -10 degrees Celsius
        let expectedOutput = [263.15, 14.0] // 263.15 Kelvin and 14 Fahrenheit
        XCTAssertEqual(solution.convertTemperature(input), expectedOutput)
    }

    func testConvertTemperatureZero() {
        let solution = Solution()
        let input = 0.0 // 0 degrees Celsius
        let expectedOutput = [273.15, 32.0] // 273.15 Kelvin and 32 Fahrenheit
        XCTAssertEqual(solution.convertTemperature(input), expectedOutput)
    }
}
