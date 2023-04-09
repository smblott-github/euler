//!/usr/bin/env java

/* NOTE:
*
* Solution for counting sundays problem. Counts the number of sundays in the first month of years since the start of the 20th century.
*/

import java.util.*;

public class euler-19-counting-sundays {
	public static void main(String[] args) {
		int choice = Integer.parseInt(args[0]);
		sundays(choice);
	}
	
	public static void sundays(int choice) {
		int year = 1901;
		int weekday = 2;
		int day = 1;
		int numsundays = 0;
		int daysinmonth;
		while (year <= choice) {
			int month = 1;
			day = 1;	
			while (month <= 12) {
				if (month == 9 || month == 4 || month == 6 || month == 11) {
					daysinmonth = 30;
				}
				else if (month == 2) {
					if (year%100 == 0) {
						if (year%400 == 0) {
							daysinmonth = 29;
						}
						else {
							daysinmonth = 28;
						}
					}
					else if (year%4 == 0) {
						daysinmonth = 29;
					}
					else {
						daysinmonth = 28;
					}
				}
				else {
					daysinmonth = 31;
				}
					
			
				while (day <= daysinmonth) {
					if (weekday%7 == 0 && month == 1) {
						numsundays++;
					}
					day++;
					weekday++;
				}
				month++;
				day = 1;
				
			}
			year++;
		}
		System.out.println(numsundays);

	}
}
