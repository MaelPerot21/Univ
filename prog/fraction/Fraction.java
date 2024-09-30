package fraction;

class Fraction {
    int numerator;
    int denominator;

    public Fraction(int num, int den) {
        this.numerator = num;
        this.denominator = den;
    }

    public int getDenominateur() {
        return this.denominator;
    }

    public void setDenominateur(int den) {
        if (den != 0)
            this.denominator = den;
    }

    public int getNumerateur() {
        return this.numerator;
    }

    public void setNumerateur(int num) {
        this.numerator = num;
    }

    public static int pgcd(int a, int b) {
        int c;
        while (b != 0) {
            c = a % b;
            a = b;
            b = c;
        }
        return a;
        }

    public void inverse() {
        if (this.numerator == 0)
            return;


        int save = this.denominator;
        
        if (this.numerator < 0)
        {
            this.denominator = 0 - this.numerator;
            this.numerator = 0 - save;
        }
        else
        {
            this.denominator = this.numerator;
            this.numerator = save;
        }
    }

    public void multiplierParCoeff(int i) {
        this.numerator = this.numerator * i;
    }

    public void reduire() {
        int pgcd = pgcd(this.numerator, this.denominator);

        this.numerator = this.numerator / pgcd;
        this.denominator = this.denominator / pgcd;

        if (denominator < 0)
        {
            numerator = 0 - numerator;
            denominator = 0 - denominator;
        }
    }

    public boolean egaleA(Fraction f) {
        this.reduire();
        f.reduire();

        if ((this.denominator == f.denominator) && (this.numerator == f.numerator))
            return true;
        return false;
    }

    public void ajoute(Fraction f) {
        f.numerator = f.numerator * this.denominator;

        this.numerator = this.numerator * f.denominator + f.numerator;
        this.denominator = this.denominator * f.denominator;

        this.reduire();
    }

    public void soustrait(Fraction f) {
        f.numerator = 0 - f.numerator;

        ajoute(f);
    }

    public void multiplie(Fraction f) {
        this.denominator = this.denominator * f.denominator;
        this.numerator = this.numerator * f.numerator;

        reduire();
    }

    public void divise(Fraction f) {
        f.inverse();

        multiplie(f);
    }
}