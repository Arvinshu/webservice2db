package com.arvin.repository;

import com.arvin.model.DepartmentsystemEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;

import static org.springframework.data.jpa.domain.AbstractPersistable_.id;

/**
 * Created by shuxi on 2016-9-10.
 */
@Repository
public interface DepartmentsystemRepository extends JpaRepository<DepartmentsystemEntity, Integer> {
    @Modifying
    @Transactional
    @Query("update DepartmentsystemEntity de set de.deptName = :qDeptname, de.systemName = :qSystemname, de.createTime = :qCreatetime where de.id = :qId")
    public void updateDeptsys(@Param("qDeptname") String deptname,
                              @Param("qSystemname") String systemname,
                              @Param("qCreatetime")Timestamp createtime,
                              @Param("qId") Integer id
                              );
}
