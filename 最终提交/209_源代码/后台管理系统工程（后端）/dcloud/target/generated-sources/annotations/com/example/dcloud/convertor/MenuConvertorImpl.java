package com.example.dcloud.convertor;

import com.example.dcloud.dto.MenuDto;
import com.example.dcloud.entity.Menu;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2021-06-29T13:09:10+0800",
    comments = "version: 1.2.0.Final, compiler: javac, environment: Java 1.8.0_60 (Oracle Corporation)"
)
@Component
public class MenuConvertorImpl implements MenuConvertor {

    @Override
    public MenuDto menuToMenuDto(Menu menu) {
        if ( menu == null ) {
            return null;
        }

        MenuDto menuDto = new MenuDto();

        menuDto.setId( menu.getId() );
        menuDto.setParentId( menu.getParentId() );
        menuDto.setName( menu.getName() );
        menuDto.setMenuOrder( menu.getMenuOrder() );
        menuDto.setIcon( menu.getIcon() );
        menuDto.setUrl( menu.getUrl() );
        menuDto.setIsMenu( menu.getIsMenu() );
        menuDto.setIsVisible( menu.getIsVisible() );
        menuDto.setIsPage( menu.getIsPage() );
        menuDto.setIsDeleted( menu.getIsDeleted() );

        return menuDto;
    }
}
