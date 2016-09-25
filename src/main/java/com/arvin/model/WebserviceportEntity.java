package com.arvin.model;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Timestamp;

/**
 * Created by shuxi on 2016-9-10.
 */
@Entity
@Table(name = "webserviceport", schema = "springmvc", catalog = "")
public class WebserviceportEntity {
    private int id;
    private String wsPort;
    private String wsDesc;
    private String wsName;
    private Timestamp pubDate;
    private boolean available;
    private String wsNote;
    private DepartmentsystemEntity deptsysByDeptsysId;



    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "ws_port", nullable = false, length = 45)
    public String getWsPort() {
        return wsPort;
    }

    public void setWsPort(String wsPort) {
        this.wsPort = wsPort;
    }

    @Basic
    @Column(name = "ws_desc", nullable = false, length = 100)
    public String getWsDesc() {
        return wsDesc;
    }

    public void setWsDesc(String wsDesc) {
        this.wsDesc = wsDesc;
    }

    @Basic
    @Column(name = "ws_name", nullable = true, length = 100)
    public String getWsName() {
        return wsName;
    }

    public void setWsName(String columnName) {
        this.wsName = columnName;
    }

    @Basic
    @Column(name = "pub_date", nullable = false)
    public Timestamp getPubDate() {
        return pubDate;
    }

    public void setPubDate(Timestamp pubDate) {
        this.pubDate = pubDate;
    }

    @Basic
    @Column(name = "available", nullable = false)
    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    @Basic
    @Column(name = "ws_note", length = 255)
    public String getWsNote() {
        return wsNote;
    }

    public void setWsNote(String wsNote) {
        this.wsNote = wsNote;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        WebserviceportEntity that = (WebserviceportEntity) o;

        if (id != that.id) return false;
        if (wsPort != null ? !wsPort.equals(that.wsPort) : that.wsPort != null) return false;
        if (wsDesc != null ? !wsDesc.equals(that.wsDesc) : that.wsDesc != null) return false;
        if (wsName != null ? !wsName.equals(that.wsName) : that.wsName != null) return false;
        if (pubDate != null ? !pubDate.equals(that.pubDate) : that.pubDate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (wsPort != null ? wsPort.hashCode() : 0);
        result = 31 * result + (wsDesc != null ? wsDesc.hashCode() : 0);
        result = 31 * result + (wsName != null ? wsName.hashCode() : 0);
        result = 31 * result + (pubDate != null ? pubDate.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "deptsys_id", referencedColumnName = "id", nullable = false)
    public DepartmentsystemEntity getDeptsysByDeptsysId() {
        return deptsysByDeptsysId;
    }

    public void setDeptsysByDeptsysId(DepartmentsystemEntity deptsysByDeptsysId) {
        this.deptsysByDeptsysId = deptsysByDeptsysId;
    }
}
