.class public abstract Lcom/mediatek/gwsd/IGwsdService$Stub;
.super Landroid/os/Binder;
.source "IGwsdService.java"

# interfaces
.implements Lcom/mediatek/gwsd/IGwsdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gwsd/IGwsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addListener:I = 0x1

.field static final blacklist TRANSACTION_isDataAvailableForGwsdDualSim:I = 0x9

.field static final blacklist TRANSACTION_removeListener:I = 0x2

.field static final blacklist TRANSACTION_setAutoRejectModeEnabled:I = 0x4

.field static final blacklist TRANSACTION_setCallValidTimer:I = 0x6

.field static final blacklist TRANSACTION_setGwsdDualSimEnabled:I = 0x8

.field static final blacklist TRANSACTION_setIgnoreSameNumberInterval:I = 0x7

.field static final blacklist TRANSACTION_setUserModeEnabled:I = 0x3

.field static final blacklist TRANSACTION_syncGwsdInfo:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 96
    const-string v0, "com.mediatek.gwsd.IGwsdService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/gwsd/IGwsdService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 104
    if-nez p0, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    const-string v0, "com.mediatek.gwsd.IGwsdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 108
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/gwsd/IGwsdService;

    if-eqz v1, :cond_1

    .line 109
    move-object v1, v0

    check-cast v1, Lcom/mediatek/gwsd/IGwsdService;

    return-object v1

    .line 111
    :cond_1
    new-instance v1, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultImpl()Lcom/mediatek/gwsd/IGwsdService;
    .locals 1

    .line 517
    sget-object v0, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gwsd/IGwsdService;

    return-object v0
.end method

.method public static blacklist setDefaultImpl(Lcom/mediatek/gwsd/IGwsdService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/gwsd/IGwsdService;

    .line 507
    sget-object v0, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gwsd/IGwsdService;

    if-nez v0, :cond_1

    .line 510
    if-eqz p0, :cond_0

    .line 511
    sput-object p0, Lcom/mediatek/gwsd/IGwsdService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/gwsd/IGwsdService;

    .line 512
    const/4 v0, 0x1

    return v0

    .line 514
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 508
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 115
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const-string v0, "com.mediatek.gwsd.IGwsdService"

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 128
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 124
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v1

    .line 218
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 221
    .local v2, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mediatek/gwsd/IGwsdService$Stub;->isDataAvailableForGwsdDualSim(Z)Z

    move-result v3

    .line 222
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    return v1

    .line 209
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 212
    .restart local v2    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setGwsdDualSimEnabled(Z)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    return v1

    .line 198
    .end local v2    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setIgnoreSameNumberInterval(II)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    return v1

    .line 187
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 192
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setCallValidTimer(II)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    return v1

    .line 174
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v2

    .line 180
    .local v4, "_arg1":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v2, v1

    .line 181
    .local v2, "_arg2":Z
    :cond_3
    invoke-virtual {p0, v3, v4, v2}, Lcom/mediatek/gwsd/IGwsdService$Stub;->syncGwsdInfo(IZZ)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    return v1

    .line 163
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .restart local v3    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v2, v1

    .line 168
    .local v2, "_arg1":Z
    :cond_4
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setAutoRejectModeEnabled(IZ)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    return v1

    .line 152
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .restart local v3    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v2, v1

    .line 157
    .restart local v2    # "_arg1":Z
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/gwsd/IGwsdService$Stub;->setUserModeEnabled(IZ)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    return v1

    .line 143
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/gwsd/IGwsdService$Stub;->removeListener(I)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    return v1

    .line 132
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/gwsd/IGwsdListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gwsd/IGwsdListener;

    move-result-object v3

    .line 137
    .local v3, "_arg1":Lcom/mediatek/gwsd/IGwsdListener;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gwsd/IGwsdService$Stub;->addListener(ILcom/mediatek/gwsd/IGwsdListener;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
