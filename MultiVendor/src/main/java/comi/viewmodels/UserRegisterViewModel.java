package comi.viewmodels;

import comi.entities.Comment;
import comi.entities.Personinfo;
import comi.entities.Saleorder;
import comi.entities.Userrole;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import java.util.*;

public class UserRegisterViewModel {
    private Integer id;
    @NotEmpty
    @Length(min = 3, max = 10)
    private String username;
    @NotEmpty
    @Email
    private String email;
    @NotEmpty
    @Pattern(regexp = "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})")
    private String password;

    private String district;
    private String firstname;
    private String lastname;
    private boolean gender;
    private Date birthday;
    private String address;
    private String street;

}
