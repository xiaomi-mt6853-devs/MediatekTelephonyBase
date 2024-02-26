.class public Lmediatek/telephony/MtkDisconnectCause;
.super Ljava/lang/Object;
.source "MtkDisconnectCause.java"


# static fields
.field public static final blacklist CAUSE_ADDRESS_INCOMPLETE:I = 0x5f4

.field public static final blacklist CAUSE_AMBIGUOUS:I = 0x5f5

.field public static final blacklist CAUSE_BAD_EXTENSION:I = 0x5ed

.field public static final blacklist CAUSE_BAD_GATEWAY:I = 0x5fb

.field public static final blacklist CAUSE_BAD_REQUEST:I = 0x5dd

.field public static final blacklist CAUSE_BUSY_EVERYWHERE:I = 0x600

.field public static final blacklist CAUSE_BUSY_HERE:I = 0x5f6

.field public static final blacklist CAUSE_CALL_TRANSACTION_NOT_EXIST:I = 0x5f1

.field public static final blacklist CAUSE_CONFLICT:I = 0x5e6

.field public static final blacklist CAUSE_DECLINE:I = 0x601

.field public static final blacklist CAUSE_DOES_NOT_EXIST_ANYWHERE:I = 0x602

.field public static final blacklist CAUSE_EXTENSION_REQUIRED:I = 0x5ee

.field public static final blacklist CAUSE_FORBIDDEN:I = 0x5e0

.field public static final blacklist CAUSE_GATEWAY_TIMEOUT:I = 0x5fd

.field public static final blacklist CAUSE_GONE:I = 0x5e7

.field public static final blacklist CAUSE_INTERVAL_TOO_BRIEF:I = 0x5ef

.field public static final blacklist CAUSE_LENGTH_REQUIRED:I = 0x5e8

.field public static final blacklist CAUSE_LOOP_DETECTED:I = 0x5f2

.field public static final blacklist CAUSE_MESSAGE_TOO_LONG:I = 0x5ff

.field public static final blacklist CAUSE_METHOD_NOT_ALLOWED:I = 0x5e2

.field public static final blacklist CAUSE_MOVED_PERMANENTLY:I = 0x5dc

.field public static final blacklist CAUSE_NOT_ACCEPTABLE:I = 0x5e3

.field public static final blacklist CAUSE_NOT_ACCEPTABLE_HERE:I = 0x5f8

.field public static final blacklist CAUSE_NOT_FOUND:I = 0x5e1

.field public static final blacklist CAUSE_NOT_IMPLEMENTED:I = 0x5fa

.field public static final blacklist CAUSE_PAYMENT_REQUIRED:I = 0x5df

.field public static final blacklist CAUSE_PROXY_AUTHENTICATION_REQUIRED:I = 0x5e4

.field public static final blacklist CAUSE_REQUEST_ENTRY_TOO_LONG:I = 0x5e9

.field public static final blacklist CAUSE_REQUEST_TERMINATED:I = 0x5f7

.field public static final blacklist CAUSE_REQUEST_TIMEOUT:I = 0x5e5

.field public static final blacklist CAUSE_REQUEST_URI_TOO_LONG:I = 0x5ea

.field public static final blacklist CAUSE_SERVER_INTERNAL_ERROR:I = 0x5f9

.field public static final blacklist CAUSE_SERVICE_UNAVAILABLE:I = 0x5fc

.field public static final blacklist CAUSE_SESSION_NOT_ACCEPTABLE:I = 0x603

.field public static final blacklist CAUSE_TEMPORARILY_UNAVAILABLE:I = 0x5f0

.field public static final blacklist CAUSE_TOO_MANY_HOPS:I = 0x5f3

.field public static final blacklist CAUSE_UNAUTHORIZED:I = 0x5de

.field public static final blacklist CAUSE_UNSUPPORTED_MEDIA_TYPE:I = 0x5eb

.field public static final blacklist CAUSE_UNSUPPORTED_URI_SCHEME:I = 0x5ec

.field public static final blacklist CAUSE_VERSION_NOT_SUPPORTED:I = 0x5fe

.field public static final blacklist ECC_OVER_WIFI_UNSUPPORTED:I = 0x3ea

.field public static final blacklist IMS_EMERGENCY_REREG:I = 0x17c

.field public static final blacklist INCOMING_REJECTED_FORWARD:I = 0x3f0

.field public static final blacklist INCOMING_REJECTED_LOW_BATTERY:I = 0x3f2

.field public static final blacklist INCOMING_REJECTED_NO_COVERAGE:I = 0x3f1

.field public static final blacklist INCOMING_REJECTED_NO_FORWARD:I = 0x3ef

.field public static final blacklist INCOMING_REJECTED_SPECIAL_HANGUP:I = 0x3f3

.field public static final blacklist MTK_DISCONNECTED_CAUSE_BASE:I = 0x3e8

.field public static final blacklist OUTGOING_CANCELED_BY_SERVICE:I = 0x3e9

.field public static final blacklist VOLTE_SS_DATA_OFF:I = 0x3ec

.field public static final blacklist WFC_CALL_DROP_BACKHAUL_CONGESTION:I = 0x3ee

.field public static final blacklist WFC_CALL_DROP_BAD_RSSI:I = 0x3ed

.field public static final blacklist WFC_HANDOVER_LTE_FAIL:I = 0x193

.field public static final blacklist WFC_HANDOVER_WIFI_FAIL:I = 0x192

.field public static final blacklist WFC_ISP_PROBLEM:I = 0x191

.field public static final blacklist WFC_UNAVAILABLE_IN_CURRENT_LOCATION:I = 0x3eb

.field public static final blacklist WFC_WIFI_SIGNAL_LOST:I = 0x190


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cause"    # I

    .line 130
    sparse-switch p0, :sswitch_data_0

    .line 242
    const-string v0, "UNKNOWN"

    return-object v0

    .line 227
    :sswitch_0
    const-string v0, "CAUSE_SESSION_NOT_ACCEPTABLE"

    return-object v0

    .line 225
    :sswitch_1
    const-string v0, "CAUSE_DOES_NOT_EXIST_ANYWHERE"

    return-object v0

    .line 223
    :sswitch_2
    const-string v0, "CAUSE_DECLINE"

    return-object v0

    .line 221
    :sswitch_3
    const-string v0, "CAUSE_BUSY_EVERYWHERE"

    return-object v0

    .line 219
    :sswitch_4
    const-string v0, "CAUSE_MESSAGE_TOO_LONG"

    return-object v0

    .line 217
    :sswitch_5
    const-string v0, "CAUSE_VERSION_NOT_SUPPORTED"

    return-object v0

    .line 215
    :sswitch_6
    const-string v0, "CAUSE_GATEWAY_TIMEOUT"

    return-object v0

    .line 213
    :sswitch_7
    const-string v0, "CAUSE_SERVICE_UNAVAILABLE"

    return-object v0

    .line 211
    :sswitch_8
    const-string v0, "CAUSE_BAD_GATEWAY"

    return-object v0

    .line 209
    :sswitch_9
    const-string v0, "CAUSE_NOT_IMPLEMENTED"

    return-object v0

    .line 207
    :sswitch_a
    const-string v0, "CAUSE_SERVER_INTERNAL_ERROR"

    return-object v0

    .line 205
    :sswitch_b
    const-string v0, "CAUSE_NOT_ACCEPTABLE_HERE"

    return-object v0

    .line 203
    :sswitch_c
    const-string v0, "CAUSE_REQUEST_TERMINATED"

    return-object v0

    .line 201
    :sswitch_d
    const-string v0, "CAUSE_BUSY_HERE"

    return-object v0

    .line 199
    :sswitch_e
    const-string v0, "CAUSE_AMBIGUOUS"

    return-object v0

    .line 197
    :sswitch_f
    const-string v0, "CAUSE_ADDRESS_INCOMPLETE"

    return-object v0

    .line 195
    :sswitch_10
    const-string v0, "CAUSE_TOO_MANY_HOPS"

    return-object v0

    .line 193
    :sswitch_11
    const-string v0, "CAUSE_LOOP_DETECTED"

    return-object v0

    .line 191
    :sswitch_12
    const-string v0, "CAUSE_CALL_TRANSACTION_NOT_EXIST"

    return-object v0

    .line 189
    :sswitch_13
    const-string v0, "CAUSE_TEMPORARILY_UNAVAILABLE"

    return-object v0

    .line 187
    :sswitch_14
    const-string v0, "CAUSE_INTERVAL_TOO_BRIEF"

    return-object v0

    .line 185
    :sswitch_15
    const-string v0, "CAUSE_EXTENSION_REQUIRED"

    return-object v0

    .line 183
    :sswitch_16
    const-string v0, "CAUSE_BAD_EXTENSION"

    return-object v0

    .line 181
    :sswitch_17
    const-string v0, "CAUSE_UNSUPPORTED_URI_SCHEME"

    return-object v0

    .line 179
    :sswitch_18
    const-string v0, "CAUSE_UNSUPPORTED_MEDIA_TYPE"

    return-object v0

    .line 177
    :sswitch_19
    const-string v0, "CAUSE_REQUEST_URI_TOO_LONG"

    return-object v0

    .line 175
    :sswitch_1a
    const-string v0, "CAUSE_REQUEST_ENTRY_TOO_LONG"

    return-object v0

    .line 173
    :sswitch_1b
    const-string v0, "CAUSE_LENGTH_REQUIRED"

    return-object v0

    .line 171
    :sswitch_1c
    const-string v0, "CAUSE_GONE"

    return-object v0

    .line 169
    :sswitch_1d
    const-string v0, "CAUSE_CONFLICT"

    return-object v0

    .line 167
    :sswitch_1e
    const-string v0, "CAUSE_REQUEST_TIMEOUT"

    return-object v0

    .line 165
    :sswitch_1f
    const-string v0, "CAUSE_PROXY_AUTHENTICATION_REQUIRED"

    return-object v0

    .line 163
    :sswitch_20
    const-string v0, "CAUSE_NOT_ACCEPTABLE"

    return-object v0

    .line 161
    :sswitch_21
    const-string v0, "CAUSE_METHOD_NOT_ALLOWED"

    return-object v0

    .line 159
    :sswitch_22
    const-string v0, "CAUSE_NOT_FOUND"

    return-object v0

    .line 157
    :sswitch_23
    const-string v0, "CAUSE_FORBIDDEN"

    return-object v0

    .line 155
    :sswitch_24
    const-string v0, "CAUSE_PAYMENT_REQUIRED"

    return-object v0

    .line 153
    :sswitch_25
    const-string v0, "CAUSE_UNAUTHORIZED"

    return-object v0

    .line 151
    :sswitch_26
    const-string v0, "CAUSE_BAD_REQUEST"

    return-object v0

    .line 149
    :sswitch_27
    const-string v0, "CAUSE_MOVED_PERMANENTLY"

    return-object v0

    .line 239
    :sswitch_28
    const-string v0, "INCOMING_REJECTED_SPECIAL_HANGUP"

    return-object v0

    .line 237
    :sswitch_29
    const-string v0, "INCOMING_REJECTED_LOW_BATTERY"

    return-object v0

    .line 235
    :sswitch_2a
    const-string v0, "INCOMING_REJECTED_NO_COVERAGE"

    return-object v0

    .line 233
    :sswitch_2b
    const-string v0, "INCOMING_REJECTED_FORWARD"

    return-object v0

    .line 231
    :sswitch_2c
    const-string v0, "INCOMING_REJECTED_NO_FORWARD"

    return-object v0

    .line 140
    :sswitch_2d
    const-string v0, "WFC_CALL_DROP_BACKHAUL_CONGESTION"

    return-object v0

    .line 142
    :sswitch_2e
    const-string v0, "WFC_CALL_DROP_BAD_RSSI"

    return-object v0

    .line 145
    :sswitch_2f
    const-string v0, "VOLTE_SS_DATA_OFF"

    return-object v0

    .line 138
    :sswitch_30
    const-string v0, "WFC_UNAVAILABLE_IN_CURRENT_LOCATION"

    return-object v0

    .line 136
    :sswitch_31
    const-string v0, "ECC_OVER_WIFI_UNSUPPORTED"

    return-object v0

    .line 133
    :sswitch_32
    const-string v0, "OUTGOING_CANCELED_BY_SERVICE"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_32
        0x3ea -> :sswitch_31
        0x3eb -> :sswitch_30
        0x3ec -> :sswitch_2f
        0x3ed -> :sswitch_2e
        0x3ee -> :sswitch_2d
        0x3ef -> :sswitch_2c
        0x3f0 -> :sswitch_2b
        0x3f1 -> :sswitch_2a
        0x3f2 -> :sswitch_29
        0x3f3 -> :sswitch_28
        0x5dc -> :sswitch_27
        0x5dd -> :sswitch_26
        0x5de -> :sswitch_25
        0x5df -> :sswitch_24
        0x5e0 -> :sswitch_23
        0x5e1 -> :sswitch_22
        0x5e2 -> :sswitch_21
        0x5e3 -> :sswitch_20
        0x5e4 -> :sswitch_1f
        0x5e5 -> :sswitch_1e
        0x5e6 -> :sswitch_1d
        0x5e7 -> :sswitch_1c
        0x5e8 -> :sswitch_1b
        0x5e9 -> :sswitch_1a
        0x5ea -> :sswitch_19
        0x5eb -> :sswitch_18
        0x5ec -> :sswitch_17
        0x5ed -> :sswitch_16
        0x5ee -> :sswitch_15
        0x5ef -> :sswitch_14
        0x5f0 -> :sswitch_13
        0x5f1 -> :sswitch_12
        0x5f2 -> :sswitch_11
        0x5f3 -> :sswitch_10
        0x5f4 -> :sswitch_f
        0x5f5 -> :sswitch_e
        0x5f6 -> :sswitch_d
        0x5f7 -> :sswitch_c
        0x5f8 -> :sswitch_b
        0x5f9 -> :sswitch_a
        0x5fa -> :sswitch_9
        0x5fb -> :sswitch_8
        0x5fc -> :sswitch_7
        0x5fd -> :sswitch_6
        0x5fe -> :sswitch_5
        0x5ff -> :sswitch_4
        0x600 -> :sswitch_3
        0x601 -> :sswitch_2
        0x602 -> :sswitch_1
        0x603 -> :sswitch_0
    .end sparse-switch
.end method
