class Solution {
public:
    int sumNumbers(TreeNode* root) {
        total = 0;
        dfs(root, 0);
        return total;
    }
    
    void dfs(TreeNode *root, int sum) {
        if (root == nullptr) {
            return;
        }
        sum = sum * 10 + root->val;
        if (root->left == nullptr && root->right == nullptr) {
            total += sum;
            return;
        }
        dfs(root->left, sum);
        dfs(root->right, sum);
    }
    
private:
    int total;
};
