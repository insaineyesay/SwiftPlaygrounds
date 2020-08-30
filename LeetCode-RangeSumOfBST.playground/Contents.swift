public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        
        var sum = 0
        guard let node = root else { return sum }
        if L <= node.val &&  node.val <= R {
            sum += node.val
        }
        if L < node.val {
            sum = sum + rangeSumBST(node.left, L, R)
        }
        if node.val < R {
            sum = sum + rangeSumBST(node.right, L, R)
        }
        
        return sum
    }
}


let root = [10,5,15,3,7,nil,18], L = 7, R = 15
let tree = TreeNode(10)

for i in 0..<root.count {
    print(root[i])
    solution.rangeSumBST(root[i], L, R)
}

let solution = Solution()
let result = solution.rangeSumBST(root.val, L, R)
//Output: 32
