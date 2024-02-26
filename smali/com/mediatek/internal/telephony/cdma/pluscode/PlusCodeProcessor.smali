.class public Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;
.super Ljava/lang/Object;
.source "PlusCodeProcessor.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PlusCodeProcessor"

.field private static final blacklist PLUS_CODE_IMPL_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.pluscode.CdmaPlusCodeUtils"

.field private static final blacklist PLUS_CODE_IMPL_PATH:Ljava/lang/String; = "/system/vendor/framework/via-plugin.jar"

.field private static blacklist sClassLoader:Ljava/lang/ClassLoader;

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;
    .locals 2

    .line 68
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    if-nez v0, :cond_1

    .line 69
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->makePlusCodeUtis()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlusCodeUtils sPlusCodeUtilsInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->log(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;

    return-object v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 93
    const-string v0, "PlusCodeProcessor"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method private static blacklist makePlusCodeUtis()Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;
    .locals 3

    .line 80
    new-instance v0, Ldalvik/system/PathClassLoader;

    .line 81
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "/system/vendor/framework/via-plugin.jar"

    invoke-direct {v0, v2, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->sClassLoader:Ljava/lang/ClassLoader;

    .line 83
    :try_start_0
    const-string v1, "com.mediatek.internal.telephony.cdma.pluscode.CdmaPlusCodeUtils"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    .local v0, "policyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 85
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 86
    .end local v0    # "policyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makePlusCodeUtis Exception, return default DefaultPlusCodeUtils"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/pluscode/PlusCodeProcessor;->log(Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;-><init>()V

    return-object v1
.end method
