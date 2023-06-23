function[] = bai11c(p_e, p_t, rEp)
aEp = p_t * rEp;
p_L = p_t - aEp;
p_R = p_t + aEp;
if (p_e >= p_L) && (p_e <= p_R)
    disp('Dung');
else disp('Sai');
end;