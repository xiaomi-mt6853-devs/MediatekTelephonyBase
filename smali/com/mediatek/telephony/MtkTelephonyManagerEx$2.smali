.class Lcom/mediatek/telephony/MtkTelephonyManagerEx$2;
.super Lcom/mediatek/telephony/IOemHookCallback$Stub;
.source "MtkTelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/telephony/MtkTelephonyManagerEx;->registerAtUrcInd(ILjava/util/concurrent/Executor;Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;)V
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

    .line 1238
    iput-object p1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2;->this$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    iput-object p2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2;->val$cb:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    invoke-direct {p0}, Lcom/mediatek/telephony/IOemHookCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onAtUrcInd$0(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;ILjava/lang/String;)V
    .locals 0
    .param p0, "cb"    # Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;
    .param p1, "slotId"    # I
    .param p2, "atCmd"    # Ljava/lang/String;

    .line 1246
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;->onAtUrcInd(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onError$1(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "cb"    # Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;
    .param p1, "e"    # Ljava/lang/String;

    .line 1251
    invoke-virtual {p0, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;->onError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist onAtCmdResp(IJLjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "token"    # J
    .param p4, "atCmd"    # Ljava/lang/String;

    .line 1242
    return-void
.end method

.method public blacklist onAtUrcInd(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "atCmd"    # Ljava/lang/String;

    .line 1246
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2;->val$cb:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    new-instance v2, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1247
    return-void
.end method

.method public blacklist onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/String;

    .line 1251
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2;->val$cb:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    new-instance v2, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$2$$ExternalSyntheticLambda1;-><init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1252
    return-void
.end method
