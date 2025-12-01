package tla;

import java.util.List;

public class AnalyseSyntaxique {
	private List<Token> tokens;
	private int pos;

	public TypeDeToken getTypeDeToken() {
		return tokens.get(pos).getTypeDeToken();
	}
	
	public Token lireToken() {
		return tokens.get(pos++);
	}
	
	public boolean finAtteinte() {
		return pos >= tokens.size();
	}
	
	public int S() throws SyntaxicErrorException {
		if (finAtteinte()) {
			throw new SyntaxicErrorException("Word not included in this grammar");
		}
		
		
		if (getTypeDeToken() == TypeDeToken.intv)
			return S_prime(A());
		
		else {
			throw new SyntaxicErrorException("Word not included in this grammar");
		}
			
	}
	
	public int A() throws SyntaxicErrorException {
		if (finAtteinte()) {
			throw new SyntaxicErrorException("Word not included in this grammar");
		}
		
		
		if (getTypeDeToken() == TypeDeToken.intv) {
			Token t = lireToken();
			return Integer.valueOf(t.getValeur());
		}
		
		else {
			throw new SyntaxicErrorException("Word not included in this grammar");
		}
	}
	
	public int S_prime(int i) throws SyntaxicErrorException {
		if (finAtteinte()) {
			return i;
		}
		
		if (getTypeDeToken() == TypeDeToken.add) {
			Token t = lireToken();
			return i + S() ;
		}
		
		else {
			throw new SyntaxicErrorException("Word not included in this grammar");
		}
	}
	
	public int analyse(List<Token> tokens) throws SyntaxicErrorException {
		this.tokens = tokens;
		pos = 0;
		
		return S();
	}
}
