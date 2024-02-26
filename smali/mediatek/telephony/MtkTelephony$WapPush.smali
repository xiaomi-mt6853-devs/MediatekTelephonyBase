.class public final Lmediatek/telephony/MtkTelephony$WapPush;
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
    name = "WapPush"
.end annotation


# static fields
.field public static final blacklist ACTION:Ljava/lang/String; = "action"

.field public static final blacklist ADDR:Ljava/lang/String; = "address"

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_URI_SI:Landroid/net/Uri;

.field public static final blacklist CONTENT_URI_SL:Landroid/net/Uri;

.field public static final blacklist CONTENT_URI_THREAD:Landroid/net/Uri;

.field public static final blacklist CREATE:Ljava/lang/String; = "created"

.field public static final blacklist DATE:Ljava/lang/String; = "date"

.field public static final blacklist DEFAULT_SORT_ORDER:Ljava/lang/String; = "date ASC"

.field public static final blacklist ERROR:Ljava/lang/String; = "error"

.field public static final blacklist EXPIRATION:Ljava/lang/String; = "expiration"

.field public static final blacklist LOCKED:Ljava/lang/String; = "locked"

.field public static final blacklist READ:Ljava/lang/String; = "read"

.field public static final blacklist SEEN:Ljava/lang/String; = "seen"

.field public static final blacklist SERVICE_ADDR:Ljava/lang/String; = "service_center"

.field public static final blacklist SIID:Ljava/lang/String; = "siid"

.field public static final blacklist STATUS_LOCKED:I = 0x1

.field public static final blacklist STATUS_READ:I = 0x1

.field public static final blacklist STATUS_SEEN:I = 0x1

.field public static final blacklist STATUS_UNLOCKED:I = 0x0

.field public static final blacklist STATUS_UNREAD:I = 0x0

.field public static final blacklist STATUS_UNSEEN:I = 0x0

.field public static final blacklist SUBSCRIPTION_ID:Ljava/lang/String; = "sub_id"

.field public static final blacklist TEXT:Ljava/lang/String; = "text"

.field public static final blacklist THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final blacklist TYPE:Ljava/lang/String; = "type"

.field public static final blacklist TYPE_SI:I = 0x0

.field public static final blacklist TYPE_SL:I = 0x1

.field public static final blacklist URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 92
    const-string v0, "content://wappush"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$WapPush;->CONTENT_URI:Landroid/net/Uri;

    .line 97
    const-string v0, "content://wappush/si"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$WapPush;->CONTENT_URI_SI:Landroid/net/Uri;

    .line 102
    const-string v0, "content://wappush/sl"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$WapPush;->CONTENT_URI_SL:Landroid/net/Uri;

    .line 107
    const-string v0, "content://wappush/thread_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$WapPush;->CONTENT_URI_THREAD:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
