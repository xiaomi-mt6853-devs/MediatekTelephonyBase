.class public Lcom/mediatek/gwsd/GwsdListener;
.super Ljava/lang/Object;
.source "GwsdListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;
    }
.end annotation


# instance fields
.field public blacklist callback:Lcom/mediatek/gwsd/IGwsdListener;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;

    invoke-direct {v0, p0}, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;-><init>(Lcom/mediatek/gwsd/GwsdListener;)V

    iput-object v0, p0, Lcom/mediatek/gwsd/GwsdListener;->callback:Lcom/mediatek/gwsd/IGwsdListener;

    return-void
.end method


# virtual methods
.method public blacklist onAddListenered(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 51
    return-void
.end method

.method public blacklist onAutoRejectModeChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 69
    return-void
.end method

.method public blacklist onCallValidTimerChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 78
    return-void
.end method

.method public blacklist onIgnoreSameNumberIntervalChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 87
    return-void
.end method

.method public blacklist onSyncGwsdInfoFinished(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 96
    return-void
.end method

.method public blacklist onSystemStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 106
    return-void
.end method

.method public blacklist onUserSelectionModeChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 60
    return-void
.end method
