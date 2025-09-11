while True:
    cart=0
    peng=10000
    print("1 Krónan")
    print("")
    print("2 Veðja")
    print("")
    print("3 Aldursdæmerí")
    print("")
    print("4 LOKA")
    print("")
    val=int(input("Veldu: "))
    print("")
    
    if val == 4:
        break
    
    elif val == 1:
        
        while True:
            print("")
            print("1 Drykkir")
            print("2 Nammi")
            print("3 Matur")
            print("4 Karfa ")
            print("5 Til þess að fara til baka")
            print("")
            vali=int(input("Veldu: "))
            print("")
               
            if vali == 1:
                gk=180
                PM=188
                CZ=190
                PRADE=200
                RB=188
                print("")
                print("1 Grænn Kristall 180 KR ")
                print("")
                print("2 Pepsi MAX 188 KR ")
                print("")
                print("3 Coke Zero 190 KR ")
                print("")
                print("4 Powerade 200kr")
                print("")
                print("5 Red Bull 188kr")
                print("")
                print("6 Til þess að fara til baka")
                print("")
                print("Veldu drykk")
                print("")
                vald=int(input("Veldu: "))
                print("")

                while True:
                    if vald == 1:
                        cart += gk
                        peng -= gk
                        if peng < 0:
                            print("Fuck off")
                            cart -= gk
                            peng += gk
                            break     
                        print("Þú bættir Grænum kristal í körfunna þína")
                        print("")
                        valgk=int(input("1 Til þess að halda áfram: "))
                        print("")
                
                    elif vald == 2:
                        cart += PM
                        peng -= PM    
                        print("Þú bættir Pepsi Max í körfunna þína")
                        print("")
                        valgk=int(input("1 Til þess að halda áfram: "))
                        print("")
                        
                    elif vald == 3:
                        cart += CZ
                        peng -= CZ      
                        print("Þú bættir Coke Zero í körfunna þína")
                        print("")
                        valgk=int(input("1 Til þess að halda áfram: "))
                        
                    elif vald == 4:
                        cart += PRADE
                        peng -= PRADE    
                        print("Þú Bættir Powerade í körfunna")
                        print("")
                        valgk=int(input("1 Til þess að halda áfram: "))

                    elif vald == 5:
                        cart += RB
                        peng -= RB    
                        print("Þú bættir Red Bull í körfunna þína")
                        print("")
                        valgk=int(input("1 Til þess að halda áfram: "))
                        print("")
                    if valgk == 1:
                        break
                
            elif vali == 2:
                SPK=390
                HB=400
                PG=450
                DOR=560
                SU=500
                print("")
                print("1 Sour Patch Kids 390 KR ")
                print("")
                print("2 Haribo 400 KR ")
                print("")
                print("3 Pringles 450 KR ")
                print("")
                print("4 Doritos 560kr")
                print("")
                print("5 Súkkulaði 500kr ")
                print("")
                print("6 Til þess að fara til baka")
                print("")
                print("Veldu nammi")
                print("")
                vald2=int(input("Veldu: "))
                print("")
                
                while True:
                    if vald2 == 1:
                        cart += SPK
                        peng -= SPK      
                        print("Þú bættir Sour Patch Kids í körfunna þína")
                        print("")
                        valgk2=int(input("1 Til þess að halda áfram: "))

                
                    elif vald2 == 2:
                        cart += HB
                        peng -= HB   
                        print("Þú bættir Haribos í körfunna þína")
                        print("")
                        valgk2=int(input("1 Til þess að halda áfram: "))

                    elif vald2 == 3:
                        cart += PG
                        peng -= PG   
                        print("Þú bættir Pringles í körfunna þína")
                        print("")
                        valgk2=int(input("1 Til þess að halda áfram: "))

                    elif vald2 == 4:
                        cart += DOR
                        peng -= DOR
                        print("Þú bættir Doritos í körfunna þína")
                        print("")
                        valgk2=int(input("1 Til þess að halda áfram: "))

                    elif vald2 == 5:
                        cart += SU
                        peng -= SU
                        print("Þú bættir Súkkulaði í körfunna þína")
                        print("")
                        valgk2=int(input("1 Til þess að halda áfram: "))

                    if valgk2 == 1:
                        break

                    elif vald2 == 6:
                        print("")
                        print("---------------------------------------------------------------------")
                        continue

#matur
            elif vali == 3:
                RE=3990
                SPAG=990
                PZA=1290
                HAKK=1399
                FISK=2590

                print("")
                print("1 Ribeye steik 3990 KR ")
                print("")
                print("2 Spaghetti 990 KR ")
                print("")
                print("3 Pizza 1290 KR ")
                print("")
                print("4 Hakk 1399 KR ")
                print("")
                print("5 Fiskur 2590 KR ")
                print("")
                print("6 Til þess að fara til baka")
                print("")
                print("Veldu: ")
                print("")
                vald2=int(input("Veldu: "))
                print("")
                
                while True:
                    if vald2 == 1:
                        cart += RE
                        peng -= RE    
                        print("Þú bættir Ribeye Steiki í körfunna þína")
                        print("")
                        valgk2=int(input("1 Til þess að halda áfram: "))

                
                    elif vald2 == 2:
                        cart += SPAG
                        peng -= SPAG
                        print("Þú bættir Spagettí í körfunna þína")
                        print("")
                        valgk2=int(input("1 Til þess að halda áfram: "))

                    elif vald2 == 3:
                        cart += PZA
                        peng -= PZA
                        print("Þú bættir Pizzu í körfunna þína")
                        print("")
                        valgk2=int(input("1 Til þess að halda áfram: "))

                    elif vald2 == 4:
                        cart += HAKK
                        peng -= HAKK
                        print("Þú bættir Hakki í körfunna þína")
                        print("")
                        valgk2=int(input("1 Til þess að halda áfram: "))

                    elif vald2 == 5:
                        cart += FISK
                        peng -= FISK
                        print("Þú bættir Fiski í körfunna þína")
                        print("")
                        valgk2=int(input("1 Til þess að halda áfram: "))

                    if valgk2 == 1:
                        break

                    elif vald2 == 6:
                        print("")
                        print("---------------------------------------------------------------------")
                        continue






            elif vali == 4:
                while True:
                    print("")
                    print("Þú hefur",cart,"Kr í körfunni þinni")
                    print("")
                    print("Þú hefur",peng,"Kr eftir")
                    print("")
                    valloka=int(input("1 Til þess að halda áfram: "))
                    if valloka == 1:
                        break
                    
  

        
          
            elif vali == 4:
                print("Þú hefur",cart,"Kr í körfunni þinni")
                print("")
                print("Þú hefur",peng,"Kr eftir")
                
                    
            
            elif vali == 5:
                    print("")
                    print("---------------------------------------------------------------------")
                    break