/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) { val = x; }
 * }
 */
public class Solution {
    public ListNode sortList(ListNode head) {
         if (head == null || head.next == null) {return head;}
         ListNode p1 = head;
         ListNode p2 = head;
         
         // find the middle, and divide the link list
         ListNode p1_end = head;
         while(p2 != null && p2.next != null){  // attention for the order
            p1_end = p1;
            p1 = p1.next;
            p2 = p2.next.next;
         }
         p1_end.next = null;
         
         // sort 
         ListNode n1 = sortList(head);  
         ListNode n2 = sortList(p1);
         
         // merge
         return merge(n1, n2);
    }
    
    public ListNode merge(ListNode h1, ListNode h2){
        if(h1 == null) {return h2;}
        if(h2 == null) {return h1;}
        
        if(h1.val < h2.val) {
            h1.next = merge(h1.next, h2);
            return h1;
        } else {
            h2.next = merge(h1, h2.next);
            return h2;
        }
    }
}