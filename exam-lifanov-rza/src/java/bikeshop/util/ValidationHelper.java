
package bikeshop.util;

import bikeshop.exceptions.ValidationException;

public final class ValidationHelper {
    
    private ValidationHelper(){}
    
    // protective coding проверка значений до обращения к ним 
    
    public static void requireNonNull(Object value, String errorMessage) 
                                throws ValidationException{
        if (value == null) {
            throw new ValidationException(errorMessage);
        }
    }
    
    
    public static void requireNull(Object value, String errorMessage) 
                                throws ValidationException{
        if (value != null) {
            throw new ValidationException(errorMessage);
        }
    }
    
    
    
    public static void requireNonEmpty(String value, String errorMessage) 
                                throws ValidationException{
        requireNonNull(value, errorMessage);
        if (value.trim().isEmpty()) {
            throw new ValidationException(errorMessage);
        }
    }
    
    public static void requireEquals(Object a, Object b, String errorMessage)
                            throws ValidationException {
        if (!a.equals(b)) {
            throw new ValidationException(errorMessage);
        }
    }
}
