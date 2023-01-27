package mk.ukim.finki.dians.app.exceptions;

public class PasswordsDoNotMatchException extends RuntimeException{
    public PasswordsDoNotMatchException() {
        super("Paawords Do Not Match!");
    }
}
