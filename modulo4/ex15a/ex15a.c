int greater_date(int date1, int date2){
	
	unsigned int date1t = date1>>(8*1);
	unsigned int date2t = date2>>(8*1);
	unsigned int year1 = date1t & 0xffff;
	unsigned int year2 = date2t & 0xffff;

	if(year1>year2){
		return date1;
	}else{
		if(year2>year1){
			return date2;
		}
	}
	
	date1t =(unsigned)date1>>(8*3);
	date2t = (unsigned)date2>>(8*3);
	unsigned int month1= date1t & 0xff;
	unsigned int month2= date2t & 0xff;
	if(month1>month2){
		return date1;
	}else{
		if(month2>month1){
			return date2;
		}
	}
	
	unsigned int day1 = date1 & 0xff;
	unsigned int day2 = date2 & 0xff;
	
	if(day1>day2){
		return date1;
	}else{
		if(day2>day1){
			return date2;
		}
	}
	
	return date1;
}
