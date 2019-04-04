// Normalizes degrees to be in range [0, 360).
deg = argument0;

while(deg < 0) {
    deg += 360;
}

while (deg >= 360) {
    deg -= 360;
}

return deg;
