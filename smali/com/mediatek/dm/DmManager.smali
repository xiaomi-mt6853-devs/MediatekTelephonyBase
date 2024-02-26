.class public final Lcom/mediatek/dm/DmManager;
.super Ljava/lang/Object;
.source "DmManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DmManager"

.field private static blacklist mDmManager:Lcom/mediatek/dm/DmManager;

.field private static blacklist mService:Lcom/mediatek/dm/IDmService;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/dm/DmManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/mediatek/dm/DmManager;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public static blacklist getDefaultDmManager(Landroid/content/Context;)Lcom/mediatek/dm/DmManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 30
    if-eqz p0, :cond_2

    .line 34
    const-class v0, Lcom/mediatek/dm/DmManager;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/mediatek/dm/DmManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    if-nez v1, :cond_1

    .line 36
    const-string v1, "GbaDmService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 37
    .local v1, "b":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 38
    const-string v2, "debug"

    const-string v3, "[getDefaultDmManager]The binder is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 41
    :cond_0
    invoke-static {v1}, Lcom/mediatek/dm/IDmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/dm/IDmService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/dm/DmManager;->mService:Lcom/mediatek/dm/IDmService;

    .line 42
    new-instance v2, Lcom/mediatek/dm/DmManager;

    invoke-direct {v2, p0}, Lcom/mediatek/dm/DmManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/mediatek/dm/DmManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    .line 44
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_1
    sget-object v1, Lcom/mediatek/dm/DmManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    monitor-exit v0

    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getDmSupported()I
    .locals 2

    .line 59
    :try_start_0
    sget-object v0, Lcom/mediatek/dm/DmManager;->mService:Lcom/mediatek/dm/IDmService;

    invoke-interface {v0}, Lcom/mediatek/dm/IDmService;->getDmSupported()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getImcProvision(II)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DmManager getImcProvision for feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :try_start_0
    sget-object v0, Lcom/mediatek/dm/DmManager;->mService:Lcom/mediatek/dm/IDmService;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/dm/IDmService;->getImcProvision(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist setImcProvision(III)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I
    .param p3, "pvs_en"    # I

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DmManager setImcProvision for feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", en = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_0
    sget-object v0, Lcom/mediatek/dm/DmManager;->mService:Lcom/mediatek/dm/IDmService;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/dm/IDmService;->setImcProvision(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method
