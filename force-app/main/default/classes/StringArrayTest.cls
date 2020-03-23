public class StringArrayTest {
    
    public static List<String> generateStringArray(Integer param) {
    	List<String> stringList = new List<String>();
        for (Integer i = 0; i < param; i++) {
            stringList.add('Test '+ i);
        }
        
        return stringList;
    }
}