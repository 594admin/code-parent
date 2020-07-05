package ${package}.dao;
import ${package}.model.pojo.${table.className};
import org.apache.ibatis.annotations.Param;

/**
 * @ClassName ${table.comment}
 * @Author Oblivion
 * @Date 2019/8/11
 * @Version 1.0
 **/
public interface ${table.className}Dao {

	${table.className} get${table.className}ById(@Param(value = "id") String id);

	Integer add${table.className}(${table.className} ${lowerClassName});

	Integer update${table.className}(${table.className} ${lowerClassName});

	Integer del${table.className}ById(@Param(value = "id") String id);

}
