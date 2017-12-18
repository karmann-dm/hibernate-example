package org.karmanno;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "contact_tel_detail")
public class ContactTelDetail implements Serializable {
    private Long id;
    private int version;
    private String telType;
    private String telNumber;
    private Contact contact;

    public ContactTelDetail() {

    }

    @ManyToOne
    @JoinColumn(name = "CONTACT_ID")
    public Contact getContact() {
        return this.contact;
    }
    public void setContact(Contact contact) {
        this.contact = contact;
    }

    @Override
    public String toString() {
        return "Contact tel detail - id: " + id + ", contact id: " + getContact().getId() + ", type: " + telType + ", number: " + telNumber;
    }

    public ContactTelDetail(String telType, String telNumber) {
        this.telType = telType;
        this.telNumber = telNumber;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    @Version
    @Column(name = "VERSION")
    public int getVersion() {
        return version;
    }
    public void setVersion(int version) {
        this.version = version;
    }

    @Column(name = "TEL_TYPE")
    public String getTelType() {
        return telType;
    }
    public void setTelType(String telType) {
        this.telType = telType;
    }

    @Column(name = "TEL_NUMBER")
    public String getTelNumber() {
        return telNumber;
    }
    public void setTelNumber(String telNumber) {
        this.telNumber = telNumber;
    }
}
