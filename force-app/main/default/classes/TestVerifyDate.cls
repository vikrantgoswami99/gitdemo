@isTest
private class TestVerifyDate {
    
    @isTest private static void testCheckDatesFirst() {
        Date date1 = Date.newInstance(2020,12,1);
        Date date2 = Date.newInstance(2019,1,10);
        Date date3 = VerifyDate.checkDates(date1,date2);

        System.assertEquals(Date.newInstance(2020,12,31),date3);
    }

    @isTest private static void testCheckDatesSecond() {
        Date date1 = Date.newInstance(2020,12,1);
        Date date2 = Date.newInstance(2020,12,10);
        Date date3 = VerifyDate.checkDates(date1,date2);

        System.assertEquals(date2,date3);
        
    }

    @isTest private static void testCheckDatesThird() {
        Date date1 = Date.newInstance(2020,12,1);
        Date date2 = Date.newInstance(2021,12,10);
        Date date3 = VerifyDate.checkDates(date1,date2);

        System.assertEquals(Date.newInstance(2020,12,31),date3);

        
    }
}