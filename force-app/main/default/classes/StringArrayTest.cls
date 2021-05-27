public class StringArrayTest {
	//method
    public static List<String> generateStringArray(Integer num){
        List<String> retArray = new List<String>();
        for (Integer i=0; i<num; i++){
            retArray.add('Test ' + i);
        }
        
        return retArray;
    }
}