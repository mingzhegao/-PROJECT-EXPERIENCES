package com.bd.mapper;

import com.bd.entity.BaseDict;

import java.util.List;

public interface BaseDictMapper {
    List<BaseDict> selectBaseDictByTypeCode(String dict_type_code);
}
