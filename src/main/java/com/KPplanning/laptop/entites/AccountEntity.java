/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.KPplanning.laptop.entites;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "account")
public class AccountEntity implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "full_name")
    private String fullName;
    private String email;
    private String password;
    private String address;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    @Column(name = "birth_Date")
    private Date birthDate;

    @OneToMany(mappedBy = "account")
    private List<FavoriteEntity> favorites;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "acc_role_relation",
            joinColumns = @JoinColumn(
                    name = "acc_id",
                    referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(
                    name = "role_id",
                    referencedColumnName = "id"))
    private List<AccountRoleEntity> accountRoles;
    
    @OneToMany(mappedBy="account",fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    private List<ShippingEntity> shippings;
    
    @OneToMany(mappedBy = "account",fetch=FetchType.LAZY, cascade = CascadeType.REMOVE)
    private List<ReviewAndVoteEntity> reviewandvotes;

    public AccountEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public List<FavoriteEntity> getFavorites() {
        return favorites;
    }

    public void setFavorites(List<FavoriteEntity> favorites) {
        this.favorites = favorites;
    }

    public List<AccountRoleEntity> getAccountRoles() {
        return accountRoles;
    }

    public void setAccountRoles(List<AccountRoleEntity> accountRoles) {
        this.accountRoles = accountRoles;
    }

    public List<ShippingEntity> getShippings() {
        return shippings;
    }

    public void setShippings(List<ShippingEntity> shippings) {
        this.shippings = shippings;
    }

    public List<ReviewAndVoteEntity> getReviewandvotes() {
        return reviewandvotes;
    }

    public void setReviewandvotes(List<ReviewAndVoteEntity> reviewandvotes) {
        this.reviewandvotes = reviewandvotes;
    }
    

}
