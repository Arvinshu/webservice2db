package com.arvin.model;

import com.arvin.repository.DepartmentsystemRepository;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;

/**
 * entity
 * Created by arvinshu on 2016-9-10.
 */

@Entity
@Table(name = "departmentsystem", schema = "springmvc", catalog = "")
public class DepartmentsystemEntity {

    private int id;

    private String deptName;

    private String systemName;

    private Timestamp createTime;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "dept_name", nullable = false, length = 45)
    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptname) {
        this.deptName = deptname;
    }

    @Basic
    @Column(name = "system_name", nullable = false, length = 45)
    public String getSystemName() {

        return systemName;
    }

    public void setSystemName(String systemName) {
        this.systemName = systemName;
    }

    @Basic
    @Column(name = "create_time", nullable = false)
    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    @Override
    public boolean equals(Object o) {

        if (this == o) return true;

        if (o == null || getClass() != o.getClass()) return false;

        DepartmentsystemEntity that = (DepartmentsystemEntity) o;

        if (id != that.id) return false;

        if (deptName != null ? !deptName.equals(that.deptName) : that.deptName != null) return false;

        if (systemName != null ? !systemName.equals(that.systemName) : that.systemName != null) return false;

        if (createTime != null ? !createTime.equals(that.createTime) : that.createTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {

        int result = id;

        result = 31 * result + (deptName != null ? deptName.hashCode() : 0);

        result = 31 * result + (systemName != null ? systemName.hashCode() : 0);

        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);

        return result;
    }
}
