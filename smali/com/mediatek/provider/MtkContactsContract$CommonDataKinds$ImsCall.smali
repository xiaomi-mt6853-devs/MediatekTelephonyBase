.class public final Lcom/mediatek/provider/MtkContactsContract$CommonDataKinds$ImsCall;
.super Ljava/lang/Object;
.source "MtkContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/provider/MtkContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsCall"
.end annotation


# static fields
.field public static final blacklist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/ims"

.field public static final blacklist DATA:Ljava/lang/String; = "data1"

.field public static final blacklist LABEL:Ljava/lang/String; = "data3"

.field public static final blacklist TYPE:Ljava/lang/String; = "data2"

.field public static final blacklist URL:Ljava/lang/String; = "data1"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
