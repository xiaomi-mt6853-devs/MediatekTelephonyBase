.class Lcom/mediatek/internal/telephony/PseudoCellInfo$1;
.super Ljava/lang/Object;
.source "PseudoCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/PseudoCellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/internal/telephony/PseudoCellInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/PseudoCellInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 265
    new-instance v0, Lcom/mediatek/internal/telephony/PseudoCellInfo;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/PseudoCellInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 262
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/PseudoCellInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/PseudoCellInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/mediatek/internal/telephony/PseudoCellInfo;
    .locals 1
    .param p1, "size"    # I

    .line 270
    new-array v0, p1, [Lcom/mediatek/internal/telephony/PseudoCellInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 262
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/PseudoCellInfo$1;->newArray(I)[Lcom/mediatek/internal/telephony/PseudoCellInfo;

    move-result-object p1

    return-object p1
.end method
