# step 1
mac_a = c(4, 3, 5, 4)
mac_b = c(3, 4, 4)
mac_c = c(6, 8, 8, 5, 7)

k = 3
N = length(mac_a) + length(mac_b) + length(mac_c)
G = sum(mac_a, mac_b, mac_c)

# step 2
CF = G^2/N

TSS = sum(mac_a^2) + sum(mac_b^2) + sum(mac_c^2) - CF

ssa = sum(mac_a)^2/length(mac_a)
ssb = sum(mac_b)^2/length(mac_b)
ssc = sum(mac_c)^2/length(mac_c)
SSB = sum(ssa,ssb,ssc) - CF

SSW = TSS - SSB

# step 3
MSB = SSB/(k-1)
MSW = SSW/(N-k)

# step 4
f = MSB/MSW
f_crit = 3.863

if (f > f_crit) {
    print("Ho is rejected")
    print("Ha is accepted")
} else {
    print("Ha")
}

# OR
#
