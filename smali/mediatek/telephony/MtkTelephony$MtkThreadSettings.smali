.class public final Lmediatek/telephony/MtkTelephony$MtkThreadSettings;
.super Ljava/lang/Object;
.source "MtkTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MtkThreadSettings"
.end annotation


# static fields
.field public static final blacklist MUTE:Ljava/lang/String; = "mute"

.field public static final blacklist MUTE_START:Ljava/lang/String; = "mute_start"

.field public static final blacklist NOTIFICATION_ENABLE:Ljava/lang/String; = "notification_enable"

.field public static final blacklist RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final blacklist SPAM:Ljava/lang/String; = "spam"

.field public static final blacklist THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final blacklist TOP:Ljava/lang/String; = "top"

.field public static final blacklist VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final blacklist WALLPAPER:Ljava/lang/String; = "_data"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
