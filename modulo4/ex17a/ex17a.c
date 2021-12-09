void add_byte(char x, int *vec1, int *vec2) {
    
    int i;
    int res;
   
    for (i = 0; i < *(vec1); ++i) {
		
        res = (*(vec1+i+1) >> 8) & 0x000000ff; 
        
        *(vec2+i) = (res + x) ;
    }
 }
