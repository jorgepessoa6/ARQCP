int activate_bits (int a, int left, int right){
  
  int masc1 = ((1 << (32-left)) - 1); 
  
  int masc2 = ((1 << (right-1)) - 1);
  
  int mascaraF = masc1 | masc2; 

  return a | mascaraF;
}
  




