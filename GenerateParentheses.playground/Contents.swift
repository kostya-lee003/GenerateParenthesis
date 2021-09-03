
//created on 10.08.21 by kostya lee
//Leetcode medium
//
//Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.
//
//Example 1:
//Input: n = 3
//Output: ["((()))","(()())","(())()","()(())","()()()"]
//
//Example 2:
//Input: n = 1
//Output: ["()"]
//


import UIKit

func generateParenthesis(_ n: Int) -> [String] {
        var ans = [String]()
        addParenthesis(0, open: n, close: n, ans: &ans, cur: "")
        return ans
    }

    private func addParenthesis(_ index: Int, open: Int, close: Int, ans: inout [String], cur: String) {
     
        guard open != 0 || close != 0 else {
            ans.append(cur)
            return
        }

        if open > 0 {
            addParenthesis(index + 1, open: open - 1, close: close, ans: &ans, cur: "\(cur)(")
        }

        if close > 0, close > open {
            addParenthesis(index + 1, open: open, close: close - 1, ans: &ans, cur: "\(cur))")
        }
    }

generateParenthesis(2)


