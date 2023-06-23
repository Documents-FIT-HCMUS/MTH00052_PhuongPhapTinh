function[giatrilamtron, saisotuyetdoigioihan, saisotuongdoigioihan] = bai13d(u, x, y, a, b)
giatrichinhxac = subs(u, [x,y], [a,b]);
giatrilamtron = round(giatrichinhxac,3);
saisotuyetdoigioihan = abs(giatrichinhxac-giatrilamtron);
saisotuongdoigioihan = abs((giatrilamtron-giatrichinhxac)/giatrilamtron);