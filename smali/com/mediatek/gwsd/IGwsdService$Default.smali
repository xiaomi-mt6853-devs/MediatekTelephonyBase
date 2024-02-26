.class public Lcom/mediatek/gwsd/IGwsdService$Default;
.super Ljava/lang/Object;
.source "IGwsdService.java"

# interfaces
.implements Lcom/mediatek/gwsd/IGwsdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gwsd/IGwsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addListener(ILcom/mediatek/gwsd/IGwsdListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/mediatek/gwsd/IGwsdListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isDataAvailableForGwsdDualSim(Z)Z
    .locals 1
    .param p1, "gwsdDualSimStatus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeListener(I)V
    .locals 0
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist setAutoRejectModeEnabled(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "action"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist setCallValidTimer(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "timer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist setGwsdDualSimEnabled(Z)V
    .locals 0
    .param p1, "action"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public blacklist setIgnoreSameNumberInterval(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "interna"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist setUserModeEnabled(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "action"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist syncGwsdInfo(IZZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "userEnable"    # Z
    .param p3, "autoReject"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method
