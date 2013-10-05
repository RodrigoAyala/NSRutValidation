- (BOOL) validateRut:(NSString *) rut {
  rut = [[rut stringByReplacingOccurrencesOfString:@"." withString:@""] stringByReplacingOccurrencesOfString:@"-" withString:@""];
 
  int t1 = 0;
  for (int i=0;i<[rut length]-1;i++){
    t1 += ([[rut substringWithRange:NSMakeRange(rut.length-1-(i+1), 1)] integerValue] * ((i % 6) + 2));
  }
 
  BOOL isValid = ([[[rut substringWithRange:NSMakeRange(rut.length-1, 1)] lowercaseString ] isEqualToString: ((11 -(t1 % 11)) != 10 ? [NSString stringWithFormat:@"%d",(11 -(t1 % 11))] : @"k")]);
 
  return isValid;
}
