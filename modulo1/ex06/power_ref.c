void power_ref(int *x, int y){
	int pow = 1;
	int i;
	//se y = 0 entao x = 1
	//verificar se y é positivo
	if(y > 0){
		//calcular x^y
		for( i = 0; i < y; i++){
			pow = pow*(*x);
		}
	}
	//verificar se é negativo
	else if( y < 0){
		//calcular x^y
		for( i = 0; i > y; i--){
			pow = pow/(*x);
		}
	}
	*x = pow;
}
