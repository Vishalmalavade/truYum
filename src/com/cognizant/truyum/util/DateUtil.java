package com.cognizant.truyum.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
    public Date convertToDate(String Date)
    {
    try{
        SimpleDateFormat format=new SimpleDateFormat("dd/MJM/yyyy");
        format.setLenient(false);
        return format.parse(Date);
        
    }catch(ParseException e) {
        System.out.println("Date format went wrong");
    }
        return null;
    }

}
