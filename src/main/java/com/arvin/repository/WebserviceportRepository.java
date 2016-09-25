package com.arvin.repository;

import com.arvin.model.WebserviceportEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;

/**
 * Created by shuxi on 2016-9-10.
 */
@Repository
public interface WebserviceportRepository extends JpaRepository<WebserviceportEntity, Integer> {
    @Modifying
    @Transactional
    @Query("update WebserviceportEntity we set we.wsPort = :qWsport, we.wsDesc = :qWsdesc, we.wsName = :qWsname, we.pubDate = :qPubdate, we.available = :qAvailable, we.wsNote = :qWsnote, we.deptsysByDeptsysId.id = :qDeptsysid where we.id = :qId")
    void updateWsport(@Param("qWsport") String wsport,
                      @Param("qWsdesc") String wsdesc,
                      @Param("qWsname") String wsname,
                      @Param("qPubdate") Timestamp pubdate,
                      @Param("qAvailable") boolean available,
                      @Param("qWsnote") String wsnote,
                      @Param("qDeptsysid") Integer deptsysid,
                      @Param("qId") Integer id
                      );
}
