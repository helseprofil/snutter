# RSYNT_POSTPROSESS for kube UFORE
# Sist redigert av: VL september 2022

# Sletter TELLER, MEIS, RATE, SMR for bydeler i Trondheim f�r �rganger som starter med 2005 (2005_2007)
# Setter SPV-flagg til 1 (dvs ".." Manglende data)
# Endres fordi: UTG�TT

#KUBE[AARl < 2005 & GEOniv == "B" & FYLKE == 50, 
#     `:=` (TELLER = NA_real_, 
#           RATE = NA_real_,
#           MEIS = NA_real_,
#           SMR = NA_real_,
#           TELLER_f = 1,
#           RATE_f = 1)]

# Sletter tall for aap og samlet f�r �rganger som starter med 2011 (2011_2013)
# Setter SPV-flagg til 1 (dvs ".." manglende data)
# Endres fordi: F�rste tall for disse er tilgjengelig fra 2011, s� 3-�rssnitt for �rgangene 2009_2011 og 2010_2012 er basert p� 1 og 2 �r

KUBE[AARl < 2011 & YTELSE %in% c("aap", "samlet"), 
     `:=` (TELLER = NA_real_, 
           RATE = NA_real_,
           MEIS = NA_real_,
           SMR = NA_real_,
           TELLER_f = 1,
           RATE_f = 1)]