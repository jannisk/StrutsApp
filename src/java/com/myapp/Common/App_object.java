/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.Common;

/**
 *
 * @author jkotsis
 */
import java.util.Date;

public class App_object {
     private String uid;
    private Date createDateTime;
    private String updateUser;
    private Date updateDateTime;
    private int version;
    private Date cacheDate;

    public Date getCacheDate() {
        return cacheDate;
    }

    public void setCacheDate(Date cacheDate) {
        this.cacheDate = cacheDate;
    }

    public String getUid() {
    	//System.out.println(" <-- OC_Object.getUid : "+uid); ////////////
        return uid;
    }

    public void setUid(String uid) {
    	//System.out.println(" --> OC_Object.setUid : "+uid); ////////////
        this.uid = uid;
    }

    public Date getCreateDateTime() {
        return createDateTime;
    }

    public void setCreateDateTime(Date createDateTime) {
        this.createDateTime = createDateTime;
    }

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    public Date getUpdateDateTime() {
        return updateDateTime;
    }

    public void setUpdateDateTime(Date updateDateTime) {
        this.updateDateTime = updateDateTime;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }
    
}
