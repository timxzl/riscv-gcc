unsigned int g(unsigned int x, unsigned int y) {
	return __builtin_riscv_gradd(x,y);
}

unsigned int f(unsigned int x, unsigned int y) {
	unsigned int z = g(x, y);
	(void)z;
	return g(x, y) + g(x+1, y+2) + g(x, y) + g(x+1, y+2) + g(x, y);
}
