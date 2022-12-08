package mk.ukim.finki.dians.app.exceptions;

public class InvalidUserCredentialException extends RuntimeException{

    public InvalidUserCredentialException() {
        super("Invalid user credentials exception!");
    }
}
