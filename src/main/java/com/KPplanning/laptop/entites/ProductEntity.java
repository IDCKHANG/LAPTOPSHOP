package com.KPplanning.laptop.entites;

import java.io.Serializable;
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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIgnoreType;

import javax.persistence.ManyToMany;

@Entity
@Table(name = "product")
@JsonIgnoreProperties("promotions")
public class ProductEntity implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String productName;
    private double price;
    @Column(name = "quantity_in_store")
    private int quantityInStore;
    
    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    private List<ReviewAndVoteEntity> reviewandvotes;

    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    private List<OrderDetailEntity> orderDetails;

    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    private List<ImageEntity> images;
    
    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    private List<FavoriteEntity> favorites;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private CategoryEntity category;
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "product_promotion",
            joinColumns = @JoinColumn(name = "product_id",
                    referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(
                    name = "promotion_id", 
                    referencedColumnName ="id"))
    private List<PromotionEntity> promotions;

    private String description;
    private String cputechnology;
    private String cputype;
    private String cpuSpeed;
    private String maxSpeed;
    private String busSpeed;
    private String ram;
    private String ramtype;
    private String speedBusRAM;
    private String hardDrive;
    private double screensize;
    private String resolution;
    private String screenTechnology;
    private String touchScreen;
    private String cardDesign;
    private String graphicsCard;
    private String soundTechnology;
    private String thewebOfcommunication;
    private String wirelessConnectivity;
    private String memorycardslot;
    private String opticaldrive;
    private String webcam;
    private String keyboardLight;
    private String otherFuntion;
    private String pintype;
    private String batteryInformation;
    private String operatingSystem;
    private String size;
    private String weight;
    private String aterial;

    public ProductEntity() {
    }

    public List<FavoriteEntity> getFavorites() {
        return favorites;
    }

    public void setFavorites(List<FavoriteEntity> favorites) {
        this.favorites = favorites;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<PromotionEntity> getPromotions() {
        return promotions;
    }

    public void setPromotions(List<PromotionEntity> promotions) {
        this.promotions = promotions;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantityInStore() {
        return quantityInStore;
    }

    public void setQuantityInStore(int quantityInStore) {
        this.quantityInStore = quantityInStore;
    }

    public CategoryEntity getCategory() {
        return category;
    }

    public void setCategory(CategoryEntity category) {
        this.category = category;
    }

    public List<ReviewAndVoteEntity> getReviewandvotes() {
        return reviewandvotes;
    }

    public void setReviewandvotes(List<ReviewAndVoteEntity> reviewandvotes) {
        this.reviewandvotes = reviewandvotes;
    }

    public List<OrderDetailEntity> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetailEntity> orderDetails) {
        this.orderDetails = orderDetails;
    }

    public List<ImageEntity> getImages() {
        return images;
    }

    public void setImages(List<ImageEntity> images) {
        this.images = images;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCputechnology() {
        return cputechnology;
    }

    public void setCputechnology(String cputechnology) {
        this.cputechnology = cputechnology;
    }

    public String getCputype() {
        return cputype;
    }

    public void setCputype(String cputype) {
        this.cputype = cputype;
    }

    public String getCpuSpeed() {
        return cpuSpeed;
    }

    public void setCpuSpeed(String cpuSpeed) {
        this.cpuSpeed = cpuSpeed;
    }

    public String getMaxSpeed() {
        return maxSpeed;
    }

    public void setMaxSpeed(String maxSpeed) {
        this.maxSpeed = maxSpeed;
    }

    public String getBusSpeed() {
        return busSpeed;
    }

    public void setBusSpeed(String busSpeed) {
        this.busSpeed = busSpeed;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getRamtype() {
        return ramtype;
    }

    public void setRamtype(String ramtype) {
        this.ramtype = ramtype;
    }

    public String getSpeedBusRAM() {
        return speedBusRAM;
    }

    public void setSpeedBusRAM(String speedBusRAM) {
        this.speedBusRAM = speedBusRAM;
    }

    public String getHardDrive() {
        return hardDrive;
    }

    public void setHardDrive(String hardDrive) {
        this.hardDrive = hardDrive;
    }

    public double getScreensize() {
        return screensize;
    }

    public void setScreensize(double screensize) {
        this.screensize = screensize;
    }

    public String getResolution() {
        return resolution;
    }

    public void setResolution(String resolution) {
        this.resolution = resolution;
    }

    public String getScreenTechnology() {
        return screenTechnology;
    }

    public void setScreenTechnology(String screenTechnology) {
        this.screenTechnology = screenTechnology;
    }

    public String getTouchScreen() {
        return touchScreen;
    }

    public void setTouchScreen(String touchScreen) {
        this.touchScreen = touchScreen;
    }

    public String getCardDesign() {
        return cardDesign;
    }

    public void setCardDesign(String cardDesign) {
        this.cardDesign = cardDesign;
    }

    public String getGraphicsCard() {
        return graphicsCard;
    }

    public void setGraphicsCard(String graphicsCard) {
        this.graphicsCard = graphicsCard;
    }

    public String getSoundTechnology() {
        return soundTechnology;
    }

    public void setSoundTechnology(String soundTechnology) {
        this.soundTechnology = soundTechnology;
    }

    public String getThewebOfcommunication() {
        return thewebOfcommunication;
    }

    public void setThewebOfcommunication(String thewebOfcommunication) {
        this.thewebOfcommunication = thewebOfcommunication;
    }

    public String getWirelessConnectivity() {
        return wirelessConnectivity;
    }

    public void setWirelessConnectivity(String wirelessConnectivity) {
        this.wirelessConnectivity = wirelessConnectivity;
    }

    public String getMemorycardslot() {
        return memorycardslot;
    }

    public void setMemorycardslot(String memorycardslot) {
        this.memorycardslot = memorycardslot;
    }

    public String getOpticaldrive() {
        return opticaldrive;
    }

    public void setOpticaldrive(String opticaldrive) {
        this.opticaldrive = opticaldrive;
    }

    public String getWebcam() {
        return webcam;
    }

    public void setWebcam(String webcam) {
        this.webcam = webcam;
    }

    public String getKeyboardLight() {
        return keyboardLight;
    }

    public void setKeyboardLight(String keyboardLight) {
        this.keyboardLight = keyboardLight;
    }

    public String getOtherFuntion() {
        return otherFuntion;
    }

    public void setOtherFuntion(String otherFuntion) {
        this.otherFuntion = otherFuntion;
    }

    public String getPintype() {
        return pintype;
    }

    public void setPintype(String pintype) {
        this.pintype = pintype;
    }

    public String getBatteryInformation() {
        return batteryInformation;
    }

    public void setBatteryInformation(String batteryInformation) {
        this.batteryInformation = batteryInformation;
    }

    public String getOperatingSystem() {
        return operatingSystem;
    }

    public void setOperatingSystem(String operatingSystem) {
        this.operatingSystem = operatingSystem;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getAterial() {
        return aterial;
    }

    public void setAterial(String aterial) {
        this.aterial = aterial;
    }

}
