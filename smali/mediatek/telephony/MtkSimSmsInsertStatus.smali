.class public Lmediatek/telephony/MtkSimSmsInsertStatus;
.super Ljava/lang/Object;
.source "MtkSimSmsInsertStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmediatek/telephony/MtkSimSmsInsertStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "MtkSimSmsInsertStatus"


# instance fields
.field public blacklist indexInIcc:Ljava/lang/String;

.field public blacklist insertStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lmediatek/telephony/MtkSimSmsInsertStatus$1;

    invoke-direct {v0}, Lmediatek/telephony/MtkSimSmsInsertStatus$1;-><init>()V

    sput-object v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "index"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 51
    iput p1, p0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 52
    iput-object p2, p0, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIndex()[I
    .locals 7

    .line 81
    iget-object v0, p0, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    return-object v1

    .line 85
    :cond_0
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "temp":[Ljava/lang/String;
    const-string v2, "MtkSimSmsInsertStatus"

    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    .line 87
    array-length v1, v0

    new-array v1, v1, [I

    .line 88
    .local v1, "ret":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 90
    :try_start_0
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_1

    .line 92
    :catch_0
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "TAG"

    const-string v6, "fail to parse index"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v5, -0x1

    aput v5, v1, v3

    .line 88
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v3    # "i":I
    :cond_1
    return-object v1

    .line 100
    .end local v1    # "ret":[I
    :cond_2
    const-string v3, "should not arrive here"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 60
    iget v0, p0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return-void
.end method
