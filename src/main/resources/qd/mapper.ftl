<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="${package}.dao.${table.className}Dao">

    <select id="get${table.className}ById" resultType="${package}.model.pojo.${table.className}">
        select
        <#list table.cloumns as cloumn>
            <#if cloumn_has_next>
                ${cloumn.cloumnName} as ${cloumn.fieldName},
            <#else>
                ${cloumn.cloumnName} as ${cloumn.fieldName}
            </#if>
        </#list>
        from ${table.tableName}
        <trim prefix="where" prefixOverrides="and | or">
            <if test="id != null">
                and id=${r"#{id}"}
            </if>
        </trim>
    </select>

    <insert id="add${table.className}" parameterType="${package}.model.pojo.${table.className}">
        insert into ${table.tableName}(
        <#list table.cloumns as cloumn>
            <#if cloumn_has_next>
                <#if  cloumn.cloumnName!='id'>
                    ${cloumn.cloumnName},
                </#if>
            <#else>
                <#if  cloumn.cloumnName!='id'>
                    ${cloumn.cloumnName})
                </#if>
            </#if>
        </#list>
        values(
        <#list table.cloumns as cloumn>
            <#if cloumn_has_next>
                <#if  cloumn.cloumnName!='id'>
                    ${r"#{"}${cloumn.fieldName}},
                </#if>
            <#else>
                <#if  cloumn.cloumnName!='id'>
                    ${r"#{"}${cloumn.fieldName}})
                </#if>
            </#if>
        </#list>
    </insert>

    <update id="update${table.className}" parameterType="${package}.model.pojo.${table.className}">
        update ${table.tableName}
        <trim prefix="set" suffixOverrides="," suffix="where id=${r"#{"}id}">
        <#list table.cloumns as cloumn>
                <#if cloumn_has_next>
                    <#if  cloumn.cloumnName!='id'>
                        <if test="${cloumn.fieldName} != null and ${cloumn.fieldName}!=''">
                            ${cloumn.cloumnName}=${r"#{"}${cloumn.fieldName}},
                        </if>
                    </#if>
                <#else>
                    <#if  cloumn.cloumnName!='id'>
                        <if test="${cloumn.fieldName} != null and ${cloumn.fieldName}!=''">
                            ${cloumn.cloumnName}=${r"#{"}${cloumn.fieldName}}
                        </if>
                    </#if>
                </#if>
        </#list>
        </trim>
    </update>

    <delete id="del${table.className}ById" parameterType="String">
        delete from ${table.tableName} where id = ${r"#{"}id}
    </delete>

</mapper>