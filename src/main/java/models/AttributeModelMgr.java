package models;

import services.MySQLdb;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;


public class AttributeModelMgr {

    static AttributeModelMgr instance = null;

    HttpServletRequest _request;
    HttpServletResponse _response;
    AttributeModelMgr() {

    }

    public void init(HttpServletRequest request, HttpServletResponse response) {
        _request = request;
        _response = response;
    }

    public static synchronized AttributeModelMgr getInstance() {
        if (instance == null) {
            instance = new AttributeModelMgr();
        }

        return instance;
    }

    public List<AttributeModel> loaddata() throws SQLException {
        MySQLdb db = MySQLdb.getInstance();
        List<AttributeModel> attributeModelList = db.FetchAttribute();
        return attributeModelList;
    }
}
