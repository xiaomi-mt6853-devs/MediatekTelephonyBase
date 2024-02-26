.class Lcom/mediatek/telephony/MtkTelephonyManagerEx$4;
.super Lcom/mediatek/telephony/IOemHookCallback$Stub;
.source "MtkTelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/telephony/MtkTelephonyManagerEx;->sendAtCmd(IJLjava/lang/String;Ljava/util/concurrent/Executor;Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

.field final synthetic blacklist val$cb:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx;Ljava/util/concurrent/Executor;Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    .line 1327
    iput-object p1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4;->this$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    iput-object p2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4;->val$cb:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    invoke-direct {p0}, Lcom/mediatek/telephony/IOemHookCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onAtCmdResp$0(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;IJLjava/lang/String;)V
    .locals 0
    .param p0, "cb"    # Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;
    .param p1, "slotId"    # I
    .param p2, "token"    # J
    .param p4, "atCmd"    # Ljava/lang/String;

    .line 1330
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;->onAtCmdResp(IJLjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onError$1(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "cb"    # Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;
    .param p1, "e"    # Ljava/lang/String;

    .line 1340
    invoke-virtual {p0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;->onError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist onAtCmdResp(IJLjava/lang/String;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "token"    # J
    .param p4, "atCmd"    # Ljava/lang/String;

    .line 1330
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4;->val$cb:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    new-instance v7, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda0;

    move-object v1, v7

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;IJLjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1331
    return-void
.end method

.method public blacklist onAtUrcInd(ILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "atCmd"    # Ljava/lang/String;

    .line 1336
    return-void
.end method

.method public blacklist onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/String;

    .line 1340
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4;->val$cb:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    new-instance v2, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda1;-><init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1341
    return-void
.end method
