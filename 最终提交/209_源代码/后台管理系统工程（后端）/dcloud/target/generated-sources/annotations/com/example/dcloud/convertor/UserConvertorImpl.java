package com.example.dcloud.convertor;

import com.example.dcloud.dto.UserDto;
import com.example.dcloud.entity.User;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2021-06-29T13:09:10+0800",
    comments = "version: 1.2.0.Final, compiler: javac, environment: Java 1.8.0_60 (Oracle Corporation)"
)
@Component
public class UserConvertorImpl implements UserConvertor {

    @Override
    public UserDto domain2dto(User user) {
        if ( user == null ) {
            return null;
        }

        UserDto userDto = new UserDto();

        userDto.setName( user.getName() );
        userDto.setNickname( user.getNickname() );
        userDto.setImage( user.getImage() );
        userDto.setPassword( user.getPassword() );
        userDto.setSno( user.getSno() );
        userDto.setSex( user.getSex() );
        userDto.setTelephone( user.getTelephone() );
        userDto.setEmail( user.getEmail() );
        userDto.setBirth( user.getBirth() );
        userDto.setRoleId( user.getRoleId() );
        userDto.setExp( user.getExp() );
        userDto.setState( user.getState() );
        userDto.setSchoolCode( user.getSchoolCode() );
        userDto.setPowerId( user.getPowerId() );
        userDto.setEducation( user.getEducation() );

        return userDto;
    }
}
