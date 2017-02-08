/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) { val = x; }
 * }
 */
public class Solution {
    public ListNode insertionSortList(ListNode head) {
        if (head == null || head.next == null) {return head;}
        ListNode result = new ListNode(0);
        while (head != null) {
            ListNode cur = result;
            // define the location of head.val
            while (cur.next != null && cur.next.val < head.val) {cur = cur.next;}
            // insert the head.val to the node cur. Pay atention for the sequence 
            ListNode help = cur.next;
            cur.next = head;
            head = head.next;
            cur.next.next = help;
        }
        return result.next;
    }
}