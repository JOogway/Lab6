class Lab6
  def search2 tab
    for i in 2..tab.length
      if tab[i].to_i%2 == 0
        tab.delete_at(i)
      end
    end
  end

  def search3 tab
    for i in 2..tab.length
      if tab[i].to_i%3 == 0
        tab.delete_at(i)
      end
    end
  end

  def search5 tab
    for i in 3..tab.length
      if tab[i].to_i%5 == 0
        tab.delete_at(i)
      end
    end
  end

  def search7 tab
    for i in 3..tab.length
      if tab[i].to_i%7 == 0
        tab.delete_at(i)
      end
    end
  end

  def search tab
    search2 tab
    search3 tab
    search5 tab
    search7 tab
    tab
  end

  def euklides a, b
    while b!=0
      c = a%b
      a=b
      b=c
    end
    a
  end

  def odwr_mod a, n
    p0 = 0; p1 = 1; a0 = a; n0 = n
    q = n0 / a0;
    r = n0 % a0;
    while r > 0
      t = p0 - q * p1
      if t >= 0
        t = t % n;
      else
        t = n - ((-t) % n)
        p0 = p1; p1 = t
        n0 = a0; a0 = r
        q = n0 / a0
        r = n0 % a0
      end
    end
    p1
  end

  def RSA
    tp = [11, 13, 17, 19, 23, 29, 31, 37, 41, 43]


    puts "Generowanie kluczy RSA"
    puts "----------------------"


    #generujemy dwie różne, losowe liczby pierwsze

    loop do
    p = tp[Math.rand % 10]
    q = tp[Math.rand % 10]
    break if p == q
      phi = (p - 1) * (q - 1)
      n = p * q
      #wyznaczamy wykładniki e i d

      for e in 3...nwd(e, phi) != 1
        d = odwr_mod(e, phi)
      end

      #gotowe, wypisujemy klucze

      puts "KLUCZ PUBLICZNY"
      puts "wykladnik e = #{e}"
      puts "    modul n = #{n}"
      puts "KLUCZ PRYWATNY"
      puts "wykladnik d = #{d}"

      # czekamy na klawisz i czyścimy okienko, aby nikt
      # niepowołany nie odczytał wygenerowanych kluczy

      puts "Zapisz te dane i nacisnij dowolny klawisz..."
      cout.flush
      getch
      for i in 1..500

      end
    end
  end
  end



    tab = []
    a = 36
    b= 317520421
    p = 0
    for i in 2..40
      tab.push(i)
    end
    l = Lab6.new
    l.search tab
    puts tab.inspect
    p = l.euklides a, b
    puts "Najwiekszy wspolny dzielnik liczb #{a} i #{b}: #{p}"
