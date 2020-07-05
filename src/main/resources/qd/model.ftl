package ${package}.model.pojo;
import java.io.Serializable;
import java.util.Date;

/**
 * @ClassName ${table.className}
 * @Author Oblivion
 * @Date 2019/8/11
 * @Version 1.0
 **/
public class ${table.className} {
<#list table.cloumns as cloumn>

    //${cloumn.comment}
    private ${cloumn.javaType} ${cloumn.fieldName};
</#list>

    //get set 方法
<#list table.cloumns as cloumn>
    public ${table.className} set${cloumn.upperCasecloumnName} (${cloumn.javaType} ${cloumn.fieldName}){
        this.${cloumn.fieldName}=${cloumn.fieldName};
        return this;
    }

    public ${cloumn.javaType} get${cloumn.upperCasecloumnName}(){
        return this.${cloumn.fieldName};
    }

</#list>
}
