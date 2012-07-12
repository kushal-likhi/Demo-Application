package demo

import java.lang.annotation.RetentionPolicy
import java.lang.annotation.Target
import java.lang.annotation.ElementType
import java.lang.annotation.Retention

/**
 * Created by IntelliJ IDEA.
 * User: kushal
 * Date: 2/8/12
 * Time: 12:30 AM
 * To change this template use File | Settings | File Templates.
 */

@Target([ElementType.FIELD])
@Retention(RetentionPolicy.RUNTIME)
public @interface Listed {

}