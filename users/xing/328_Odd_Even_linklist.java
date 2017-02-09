/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) { val = x; }
 * }
 */
public class Solution {
    public ListNode oddEvenList(ListNode head) {
        if (head == null || head.next == null) { return head;}
        ListNode even = new ListNode(0);
        ListNode cur = even; // the first node of even
        ListNode result = head; // the first node of odd
        while (head.next != null && head.next.next != null) {
            // take even node 
            cur.next = head.next;
            head.next = head.next.next;
            head = head.next;
            cur = cur.next;
            //cur.next = null;
        }
        // This condition check isn't needed.
        //if (head.next != null) {
        //    cur.next = head.next;
        //}  
        cur.next = head.next;
        head.next = even.next;
        return result;
    }
}