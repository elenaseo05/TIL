import java.util.*;

public class ProgressesSpeed {

    /*
    프로그래머스 팀에서는 기능 개선 작업을 수행 중입니다.
    각 기능은 진도가 100%일 때 서비스에 반영할 수 있습니다.
    또, 각 기능의 개발속도는 모두 다르기 때문에 뒤에 있는 기능이 앞에 있는 기능보다
    먼저 개발될 수 있고, 이때 뒤에 있는 기능은 앞에 있는 기능이 배포될 때 함께 배포됩니다.
    먼저 배포되어야 하는 순서대로 작업의 진도가 적힌 정수 배열 progresses와
    각 작업의 개발 속도가 적힌 정수 배열 speeds가 주어질 때
    각 배포마다 몇 개의 기능이 배포되는지를 return 하도록 solution 함수를 완성하세요.
    */

    public static void main(String[] args) {
        Solution s = new Solution();
        int[] progresses = {93, 30, 55};
        int[] speeds = {1, 30, 5};
        int[] answer = s.solution(progresses, speeds);

        for(int i = 0; i < answer.length; i++) {
            System.out.print(answer[i] + " ");
        }
    }


}

class Solution {
    public int[] solution(int[] progresses, int[] speeds) {

        Queue<Integer> queue =  new LinkedList<>();
        // queue 선입 선출 FIFO (First In First Out)
        // 자바에서 LinkedLIst 활용하여 생성
        // add 메서드를 사용하여 추가 (offer(값) 으로도 추가 가능)
        // q.add(1); q.add(2); ... q.add(6)
        //  ----------------
        //  1  2  3  4  5  6
        //  ----------------
        //  add 메소드는 삽입에 성공하면 true 반화 실패하면 lllegalStateException 발생
        // q.peek(); 참조
        //  ----------------
        //  1  2  3  4  5  6
        //  ----------------
        //  1
        // q.poll();      첫번째 값을 반환하고 제거 (비어있다면 null 반환)
        //  ----------------
        //  2  3  4  5  6
        //  ----------------
        //  -> 1
        // q.remove();    첫번째 값 제거
        //  ----------------
        //  3  4  5  6
        //  ----------------
        // q.clear();     초기화
        //  ----------------
        //
        //  ----------------

        for(int i = 0; i < progresses.length; i++) {
            // (100	30)	   / 		30
            queue.add( (int) Math.ceil(( 100.0 - progresses[i] )/ speeds[i]) );
            // Math.ceil() 는 실수형으로 계산을 하여야만 정상적으로 반올림이 가능하다.
            // 정수형으로 사용하면 정수가 나옴
        }

        List<Integer> answer = new ArrayList<>();
        int day = 0;
        int count = 0;

        while(!queue.isEmpty()) {

            day = queue.poll();
            count = 1;

            while (!queue.isEmpty() && day >= queue.peek()) {
                // 큐가 비어있지 않고, 큐의 다음 수가 day 보다 작거나 같을때
                count++; // 증가
                queue.poll(); // 이미 비교한 수 삭제
            }

            answer.add(count); //
        }

        return answer.stream().mapToInt(Integer :: intValue).toArray();
    }
}
