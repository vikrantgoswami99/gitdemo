@isTest
private class TaskUtilTest {
    
    @isTest static void testTaskPriority() {        
        String pri = TaskUtil.getTaskPriority('NY');
        System.assertEquals('Low',pri);
        
    }
    
    @isTest static void testTaskPriNull(){
        String nullpri = TaskUtil.getTaskPriority('');
        System.assertEquals(null,nullpri);
    }
}