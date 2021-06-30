package com.example.dcloud.convertor;

import com.example.dcloud.dto.CreateUserInput;
import com.example.dcloud.entity.User;
import com.example.dcloud.entity.UserRole;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2021-06-29T13:09:10+0800",
    comments = "version: 1.2.0.Final, compiler: javac, environment: Java 1.8.0_60 (Oracle Corporation)"
)
@Component
public class UserInputConvertorImpl implements UserInputConvertor {

    @Override
    public CreateUserInput domain2dto(User user, UserRole userRole) {
        if ( user == null && userRole == null ) {
            return null;
        }

        CreateUserInput createUserInput = new CreateUserInput();

        if ( user != null ) {
            createUserInput.setName( user.getName() );
            createUserInput.setSno( user.getSno() );
            createUserInput.setEmail( user.getEmail() );
        }
        if ( userRole != null ) {
            if ( userRole.getRoleId() != null ) {
                createUserInput.setRoleId( userRole.getRoleId().intValue() );
            }
        }

        return createUserInput;
    }
}
