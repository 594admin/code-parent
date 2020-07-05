package ${package}.service.impl;
import ${package}.dao.${table.className}Dao;
import ${package}.model.pojo.${table.className};
import ${package}.service.${table.className}Service;
import org.springframework.stereotype.Service;
import org.springframework.stereotype.Component;
import javax.annotation.Resource;

/**
 * @ClassName ${table.comment}
 * @Author Oblivion
 * @Date 2019/8/11
 * @Version 1.0
 **/
@Service
public class ${table.className}ServiceImpl implements ${table.className}Service {

    @Resource
    private ${table.className}Dao ${lowerClassName}Dao;

    public ${table.className} get${table.className}ById(String id){
        return ${lowerClassName}Dao.get${table.className}ById(id);
    }

    public Integer add${table.className}(${table.className} ${lowerClassName}){
            return ${lowerClassName}Dao.add${table.className}(${lowerClassName});
    }

    public Integer update${table.className}(${table.className} ${lowerClassName}){
        return ${lowerClassName}Dao.update${table.className}(${lowerClassName});
    }

    public Integer del${table.className}ById(String id){
        return ${lowerClassName}Dao.del${table.className}ById(id);
    }

}
