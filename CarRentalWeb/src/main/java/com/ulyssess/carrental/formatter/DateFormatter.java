package com.ulyssess.carrental.formatter;

import java.text.ParseException;
import java.util.Date;
import java.util.Locale;

import org.springframework.format.Formatter;
import org.springframework.stereotype.Component;

import com.ulyssess.carrental.controller.DateParse;

@Component
public class DateFormatter implements Formatter<Date>{

	public String print(Date object, Locale locale) {
		return object.toString();
	}

	public Date parse(String date, Locale locale) throws ParseException {
		return DateParse.parse(date);
	}

}