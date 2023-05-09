
struct node {
  int item;
  struct node* left;
  struct node* right;
};

// Inorder traversal
void inorderTraversal(struct node* root, int arr[], int* idx) {
  if (root == 0) return;
  inorderTraversal(root->left, arr, idx);
  arr[*idx] = root->item;
  (*idx) = (*idx) + 1;
  inorderTraversal(root->right, arr, idx);
}

// Preorder traversal
void preorderTraversal(struct node* root, int arr[], int* idx) {
  if (root == 0) return;
  arr[*idx] = root->item;
  (*idx) = (*idx) + 1;
  preorderTraversal(root->left, arr, idx);
  preorderTraversal(root->right, arr, idx);
}

// Postorder traversal
void postorderTraversal(struct node* root, int arr[], int* idx) {
  if (root == 0) return;
  postorderTraversal(root->left, arr, idx);
  postorderTraversal(root->right, arr, idx);
  arr[*idx] = root->item;
  (*idx) = (*idx) + 1;
}

// Create a new Node
struct node* create(struct node tree[], int* idx, int value) {
  int loc = (*idx);  
  (*idx) = (*idx) + 1;

  tree[loc].item = value;
  tree[loc].left = 0;
  tree[loc].right = 0; 

  return &(tree[loc]);
}

// Insert on the left of the node
void insertLeft(struct node* root, struct node* child) {
  root->left = child;
}

// Insert on the right of the node
void insertRight(struct node* root, struct node* child) {
  root->right = child;
}

int main() {
  struct node tree[5];
  int* idx = 0;
  /*            17
        21                 23
            29         41
  
  */


  struct node* root  = create(tree, idx, 17);
  insertLeft(root, create(tree, idx, 21));
  insertRight(root, create(tree, idx, 23));
  insertRight(root->left,  create(tree, idx, 29));
  insertLeft(root->right,  create(tree, idx, 41));


  int in_arr[5]; // to store nodes in inorder traversal 
  int* in_idx = 0;
  inorderTraversal(root, in_arr, in_idx);

  int pre_arr[5]; // to store nodes in preorder traversal 
  int* pre_idx = 0;
  preorderTraversal(root, pre_arr, pre_idx);

  int post_arr[5]; // to store nodes in postorder traversal 
  int* post_idx = 0;
  postorderTraversal(root, post_arr, post_idx);

  return 0;
}

