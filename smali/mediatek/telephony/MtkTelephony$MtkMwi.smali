.class public final Lmediatek/telephony/MtkTelephony$MtkMwi;
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
    name = "MtkMwi"
.end annotation


# static fields
.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist FROM:Ljava/lang/String; = "from_account"

.field public static final blacklist GOT_CONTENT:Ljava/lang/String; = "got_content"

.field public static final blacklist MSG_ACCOUNT:Ljava/lang/String; = "msg_account"

.field public static final blacklist MSG_CONTEXT:Ljava/lang/String; = "msg_context"

.field public static final blacklist MSG_DATE:Ljava/lang/String; = "msg_date"

.field public static final blacklist MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final blacklist PRIORITY:Ljava/lang/String; = "priority"

.field public static final blacklist READ:Ljava/lang/String; = "read"

.field public static final blacklist SEEN:Ljava/lang/String; = "seen"

.field public static final blacklist SUBJECT:Ljava/lang/String; = "subject"

.field public static final blacklist TO:Ljava/lang/String; = "to_account"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 819
    const-string v0, "content://mwimsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$MtkMwi;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
