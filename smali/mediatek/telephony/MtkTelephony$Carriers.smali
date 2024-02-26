.class public final Lmediatek/telephony/MtkTelephony$Carriers;
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
    name = "Carriers"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmediatek/telephony/MtkTelephony$Carriers$Skip464XlatStatus;,
        Lmediatek/telephony/MtkTelephony$Carriers$EditStatus;
    }
.end annotation


# static fields
.field public static final blacklist APN:Ljava/lang/String; = "apn"

.field public static final blacklist APN_SET_ID:Ljava/lang/String; = "apn_set_id"

.field public static final blacklist AUTH_TYPE:Ljava/lang/String; = "authtype"

.field public static final blacklist BEARER:Ljava/lang/String; = "bearer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist BEARER_BITMASK:Ljava/lang/String; = "bearer_bitmask"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CARRIER_DELETED:I = 0x5

.field public static final blacklist CARRIER_DELETED_BUT_PRESENT_IN_XML:I = 0x6

.field public static final blacklist CARRIER_EDITED:I = 0x4

.field public static final blacklist CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field public static final blacklist CARRIER_ID:Ljava/lang/String; = "carrier_id"

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_URI_DM:Landroid/net/Uri;

.field public static final blacklist CSD_NUM:Ljava/lang/String; = "csdnum"

.field public static final blacklist CURRENT:Ljava/lang/String; = "current"

.field public static final blacklist DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final blacklist DPC_URI:Landroid/net/Uri;

.field public static final blacklist EDITED_STATUS:Ljava/lang/String; = "edited"

.field public static final blacklist ENFORCE_KEY:Ljava/lang/String; = "enforced"

.field public static final blacklist ENFORCE_MANAGED_URI:Landroid/net/Uri;

.field public static final blacklist FILTERED_URI:Landroid/net/Uri;

.field public static final blacklist IMSI:Ljava/lang/String; = "imsi"

.field public static final blacklist MAX_CONNECTIONS:Ljava/lang/String; = "max_conns"

.field public static final blacklist MCC:Ljava/lang/String; = "mcc"

.field public static final blacklist MMSC:Ljava/lang/String; = "mmsc"

.field public static final blacklist MMSPORT:Ljava/lang/String; = "mmsport"

.field public static final blacklist MMSPROXY:Ljava/lang/String; = "mmsproxy"

.field public static final blacklist MNC:Ljava/lang/String; = "mnc"

.field public static final blacklist MODEM_PERSIST:Ljava/lang/String; = "modem_cognitive"

.field public static final blacklist MTU:Ljava/lang/String; = "mtu"

.field public static final blacklist MVNO_MATCH_DATA:Ljava/lang/String; = "mvno_match_data"

.field public static final blacklist MVNO_TYPE:Ljava/lang/String; = "mvno_type"

.field public static final blacklist NAME:Ljava/lang/String; = "name"

.field public static final blacklist NAP_ID:Ljava/lang/String; = "napid"

.field public static final blacklist NETWORK_TYPE_BITMASK:Ljava/lang/String; = "network_type_bitmask"

.field public static final blacklist NO_APN_SET_ID:I = 0x0

.field public static final blacklist NUMERIC:Ljava/lang/String; = "numeric"

.field public static final blacklist OMACP_ID:Ljava/lang/String; = "omacpid"

.field public static final blacklist OWNED_BY:Ljava/lang/String; = "owned_by"

.field public static final blacklist OWNED_BY_DPC:I = 0x0

.field public static final blacklist OWNED_BY_OTHERS:I = 0x1

.field public static final blacklist PASSWORD:Ljava/lang/String; = "password"

.field public static final blacklist PNN:Ljava/lang/String; = "pnn"

.field public static final blacklist PORT:Ljava/lang/String; = "port"

.field public static final blacklist PPP:Ljava/lang/String; = "ppp"

.field public static final blacklist PROFILE_ID:Ljava/lang/String; = "profile_id"

.field public static final blacklist PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final blacklist PROXY:Ljava/lang/String; = "proxy"

.field public static final blacklist PROXY_ID:Ljava/lang/String; = "proxyid"

.field public static final blacklist ROAMING_PROTOCOL:Ljava/lang/String; = "roaming_protocol"

.field public static final blacklist SERVER:Ljava/lang/String; = "server"

.field public static final blacklist SIM_APN_URI:Landroid/net/Uri;

.field public static final blacklist SKIP_464XLAT:Ljava/lang/String; = "skip_464xlat"

.field public static final blacklist SKIP_464XLAT_DEFAULT:I = -0x1

.field public static final blacklist SKIP_464XLAT_DISABLE:I = 0x0

.field public static final blacklist SKIP_464XLAT_ENABLE:I = 0x1

.field public static final blacklist SOURCE_TYPE:Ljava/lang/String; = "sourcetype"

.field public static final blacklist SPN:Ljava/lang/String; = "spn"

.field public static final blacklist SUBSCRIPTION_ID:Ljava/lang/String; = "sub_id"

.field public static final blacklist TIME_LIMIT_FOR_MAX_CONNECTIONS:Ljava/lang/String; = "max_conns_time"

.field public static final blacklist TYPE:Ljava/lang/String; = "type"

.field public static final blacklist UNEDITED:I = 0x0

.field public static final blacklist USER:Ljava/lang/String; = "user"

.field public static final blacklist USER_DELETED:I = 0x2

.field public static final blacklist USER_DELETED_BUT_PRESENT_IN_XML:I = 0x3

.field public static final blacklist USER_EDITABLE:Ljava/lang/String; = "user_editable"

.field public static final blacklist USER_EDITED:I = 0x1

.field public static final blacklist USER_VISIBLE:Ljava/lang/String; = "user_visible"

.field public static final blacklist WAIT_TIME_RETRY:Ljava/lang/String; = "wait_time"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1006
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 1018
    const-string v0, "content://telephony/carriers/sim_apn_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    .line 1026
    const-string v0, "content://telephony/carriers/dpc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$Carriers;->DPC_URI:Landroid/net/Uri;

    .line 1036
    const-string v0, "content://telephony/carriers/filtered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$Carriers;->FILTERED_URI:Landroid/net/Uri;

    .line 1043
    const-string v0, "content://telephony/carriers/enforce_managed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$Carriers;->ENFORCE_MANAGED_URI:Landroid/net/Uri;

    .line 1534
    const-string v0, "content://telephony/carriers_dm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$Carriers;->CONTENT_URI_DM:Landroid/net/Uri;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
