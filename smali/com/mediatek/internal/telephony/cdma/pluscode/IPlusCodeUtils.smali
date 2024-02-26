.class public interface abstract Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;
.super Ljava/lang/Object;
.source "IPlusCodeUtils.java"


# static fields
.field public static final blacklist PROPERTY_ICC_CDMA_OPERATOR_MCC:Ljava/lang/String; = "vendor.cdma.icc.operator.mcc"

.field public static final blacklist PROPERTY_TIME_LTMOFFSET:Ljava/lang/String; = "vendor.cdma.operator.ltmoffset"


# virtual methods
.method public abstract blacklist canFormatPlusCodeForSms()Z
.end method

.method public abstract blacklist canFormatPlusToIddNdd()Z
.end method

.method public abstract blacklist checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist replacePlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist replacePlusCodeWithIddNdd(Ljava/lang/String;)Ljava/lang/String;
.end method
