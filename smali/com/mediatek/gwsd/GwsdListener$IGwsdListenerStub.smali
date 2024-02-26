.class Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;
.super Lcom/mediatek/gwsd/IGwsdListener$Stub;
.source "GwsdListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gwsd/GwsdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IGwsdListenerStub"
.end annotation


# instance fields
.field private blacklist TAG:Ljava/lang/String;

.field private blacklist mGwsdListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mediatek/gwsd/GwsdListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/mediatek/gwsd/GwsdListener;)V
    .locals 1
    .param p1, "gwsdListener"    # Lcom/mediatek/gwsd/GwsdListener;

    .line 112
    invoke-direct {p0}, Lcom/mediatek/gwsd/IGwsdListener$Stub;-><init>()V

    .line 109
    const-string v0, "IGwsdListenerStub"

    iput-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->TAG:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->mGwsdListenerWeakRef:Ljava/lang/ref/WeakReference;

    .line 114
    return-void
.end method


# virtual methods
.method public blacklist onAddListenered(ILjava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAddListenered, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->mGwsdListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gwsd/GwsdListener;

    .line 119
    .local v0, "listener":Lcom/mediatek/gwsd/GwsdListener;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/gwsd/GwsdListener;->onAddListenered(ILjava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public blacklist onAutoRejectModeChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoRejectModeChanged, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->mGwsdListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gwsd/GwsdListener;

    .line 135
    .local v0, "listener":Lcom/mediatek/gwsd/GwsdListener;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/gwsd/GwsdListener;->onAutoRejectModeChanged(ILjava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method public blacklist onCallValidTimerChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallValidTimerChanged, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->mGwsdListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gwsd/GwsdListener;

    .line 159
    .local v0, "listener":Lcom/mediatek/gwsd/GwsdListener;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/gwsd/GwsdListener;->onCallValidTimerChanged(ILjava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public blacklist onIgnoreSameNumberIntervalChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIgnoreSameNumberIntervalChanged, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->mGwsdListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gwsd/GwsdListener;

    .line 167
    .local v0, "listener":Lcom/mediatek/gwsd/GwsdListener;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/gwsd/GwsdListener;->onIgnoreSameNumberIntervalChanged(ILjava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method

.method public blacklist onSyncGwsdInfoFinished(ILjava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncGwsdInfoFinished, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->mGwsdListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gwsd/GwsdListener;

    .line 143
    .local v0, "listener":Lcom/mediatek/gwsd/GwsdListener;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/gwsd/GwsdListener;->onSyncGwsdInfoFinished(ILjava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public blacklist onSystemStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 149
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSystemStateChanged, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->mGwsdListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gwsd/GwsdListener;

    .line 151
    .local v0, "listener":Lcom/mediatek/gwsd/GwsdListener;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Lcom/mediatek/gwsd/GwsdListener;->onSystemStateChanged(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public blacklist onUserSelectionModeChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSelectionModeChanged, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/mediatek/gwsd/GwsdListener$IGwsdListenerStub;->mGwsdListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gwsd/GwsdListener;

    .line 127
    .local v0, "listener":Lcom/mediatek/gwsd/GwsdListener;
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/gwsd/GwsdListener;->onUserSelectionModeChanged(ILjava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method
