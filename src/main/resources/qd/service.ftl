package ${package}.service;
import ${package}.model.pojo.${table.className};

/**
 * @ClassName ${table.comment}
 * @Author Oblivion
 * @Date 2019/8/11
 * @Version 1.0
 **/
public interface ${table.className}Service {

    ${table.className} get${table.className}ById(String id);

    Integer add${table.className}(${table.className} ${lowerClassName});

    Integer update${table.className}(${table.className} ${lowerClassName});

    Integer del${table.className}ById(String id);

}
