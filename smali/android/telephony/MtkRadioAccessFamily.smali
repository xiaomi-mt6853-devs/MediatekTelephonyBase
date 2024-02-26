.class public Landroid/telephony/MtkRadioAccessFamily;
.super Ljava/lang/Object;
.source "MtkRadioAccessFamily.java"


# static fields
.field private static final blacklist CDMA:I = 0x48

.field private static final blacklist EVDO:I = 0x2830

.field private static final blacklist GSM:I = 0x8003

.field private static final blacklist HS:I = 0x4380

.field private static final blacklist LTE:I = 0x41000

.field private static final blacklist NR:I = 0x80000

.field public static final blacklist RAF_1xRTT:I = 0x40

.field public static final blacklist RAF_EDGE:I = 0x2

.field public static final blacklist RAF_EHRPD:I = 0x2000

.field public static final blacklist RAF_EVDO_0:I = 0x10

.field public static final blacklist RAF_EVDO_A:I = 0x20

.field public static final blacklist RAF_EVDO_B:I = 0x800

.field public static final blacklist RAF_GPRS:I = 0x1

.field public static final blacklist RAF_GSM:I = 0x8000

.field public static final blacklist RAF_HSDPA:I = 0x80

.field public static final blacklist RAF_HSPA:I = 0x200

.field public static final blacklist RAF_HSPAP:I = 0x4000

.field public static final blacklist RAF_HSUPA:I = 0x100

.field public static final blacklist RAF_IS95A:I = 0x8

.field public static final blacklist RAF_IS95B:I = 0x8

.field public static final blacklist RAF_LTE:I = 0x1000

.field public static final blacklist RAF_LTE_CA:I = 0x40000

.field public static final blacklist RAF_NR:I = 0x80000

.field public static final blacklist RAF_TD_SCDMA:I = 0x10000

.field public static final blacklist RAF_UMTS:I = 0x4

.field public static final blacklist RAF_UNKNOWN:I = 0x0

.field private static final blacklist WCDMA:I = 0x4384


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getAdjustedRaf(I)I
    .locals 2
    .param p0, "raf"    # I

    .line 182
    const v0, 0x8003

    and-int v1, p0, v0

    if-lez v1, :cond_0

    or-int/2addr v0, p0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    move p0, v0

    .line 183
    and-int/lit16 v0, p0, 0x4384

    if-lez v0, :cond_1

    or-int/lit16 v0, p0, 0x4384

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    move p0, v0

    .line 184
    and-int/lit8 v0, p0, 0x48

    if-lez v0, :cond_2

    or-int/lit8 v0, p0, 0x48

    goto :goto_2

    :cond_2
    move v0, p0

    :goto_2
    move p0, v0

    .line 185
    and-int/lit16 v0, p0, 0x2830

    if-lez v0, :cond_3

    or-int/lit16 v0, p0, 0x2830

    goto :goto_3

    :cond_3
    move v0, p0

    :goto_3
    move p0, v0

    .line 186
    const v0, 0x41000

    and-int v1, p0, v0

    if-lez v1, :cond_4

    or-int/2addr v0, p0

    goto :goto_4

    :cond_4
    move v0, p0

    :goto_4
    move p0, v0

    .line 187
    const/high16 v0, 0x80000

    and-int v1, p0, v0

    if-lez v1, :cond_5

    or-int/2addr v0, p0

    goto :goto_5

    :cond_5
    move v0, p0

    :goto_5
    move p0, v0

    .line 189
    return p0
.end method

.method public static blacklist getNetworkTypeFromRaf(I)I
    .locals 1
    .param p0, "raf"    # I

    .line 193
    invoke-static {p0}, Landroid/telephony/MtkRadioAccessFamily;->getAdjustedRaf(I)I

    move-result p0

    .line 195
    sparse-switch p0, :sswitch_data_0

    .line 271
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    return v0

    .line 261
    :sswitch_0
    const/16 v0, 0x21

    return v0

    .line 259
    :sswitch_1
    const/16 v0, 0x20

    return v0

    .line 255
    :sswitch_2
    const/16 v0, 0x1e

    return v0

    .line 257
    :sswitch_3
    const/16 v0, 0x1f

    return v0

    .line 253
    :sswitch_4
    const/16 v0, 0x1d

    return v0

    .line 249
    :sswitch_5
    const/16 v0, 0x1b

    return v0

    .line 247
    :sswitch_6
    const/16 v0, 0x1a

    return v0

    .line 251
    :sswitch_7
    const/16 v0, 0x1c

    return v0

    .line 245
    :sswitch_8
    const/16 v0, 0x19

    return v0

    .line 243
    :sswitch_9
    const/16 v0, 0x18

    return v0

    .line 241
    :sswitch_a
    const/16 v0, 0x17

    return v0

    .line 239
    :sswitch_b
    const/16 v0, 0x16

    return v0

    .line 235
    :sswitch_c
    const/16 v0, 0x14

    return v0

    .line 229
    :sswitch_d
    const/16 v0, 0x11

    return v0

    .line 233
    :sswitch_e
    const/16 v0, 0x13

    return v0

    .line 225
    :sswitch_f
    const/16 v0, 0xf

    return v0

    .line 209
    :sswitch_10
    const/16 v0, 0xa

    return v0

    .line 207
    :sswitch_11
    const/16 v0, 0x9

    return v0

    .line 269
    :sswitch_12
    const/16 v0, 0x69

    return v0

    .line 263
    :sswitch_13
    const/16 v0, 0x65

    return v0

    .line 213
    :sswitch_14
    const/16 v0, 0xc

    return v0

    .line 205
    :sswitch_15
    const/16 v0, 0x8

    return v0

    .line 211
    :sswitch_16
    const/16 v0, 0xb

    return v0

    .line 237
    :sswitch_17
    const/16 v0, 0x15

    return v0

    .line 231
    :sswitch_18
    const/16 v0, 0x12

    return v0

    .line 227
    :sswitch_19
    const/16 v0, 0x10

    return v0

    .line 223
    :sswitch_1a
    const/16 v0, 0xe

    return v0

    .line 221
    :sswitch_1b
    const/16 v0, 0xd

    return v0

    .line 219
    :sswitch_1c
    const/4 v0, 0x7

    return v0

    .line 197
    :sswitch_1d
    const/4 v0, 0x0

    return v0

    .line 267
    :sswitch_1e
    const/16 v0, 0x68

    return v0

    .line 265
    :sswitch_1f
    const/16 v0, 0x67

    return v0

    .line 199
    :sswitch_20
    const/4 v0, 0x1

    return v0

    .line 201
    :sswitch_21
    const/4 v0, 0x2

    return v0

    .line 203
    :sswitch_22
    const/4 v0, 0x4

    return v0

    .line 217
    :sswitch_23
    const/4 v0, 0x6

    return v0

    .line 215
    :sswitch_24
    const/4 v0, 0x5

    return v0

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_24
        0x2830 -> :sswitch_23
        0x2878 -> :sswitch_22
        0x4384 -> :sswitch_21
        0x8003 -> :sswitch_20
        0x804b -> :sswitch_1f
        0xa87b -> :sswitch_1e
        0xc387 -> :sswitch_1d
        0xebff -> :sswitch_1c
        0x10000 -> :sswitch_1b
        0x14384 -> :sswitch_1a
        0x18003 -> :sswitch_19
        0x1c387 -> :sswitch_18
        0x1ebff -> :sswitch_17
        0x41000 -> :sswitch_16
        0x43878 -> :sswitch_15
        0x45384 -> :sswitch_14
        0x49003 -> :sswitch_13
        0x4b87b -> :sswitch_12
        0x4d387 -> :sswitch_11
        0x4fbff -> :sswitch_10
        0x51000 -> :sswitch_f
        0x55384 -> :sswitch_e
        0x59003 -> :sswitch_d
        0x5d387 -> :sswitch_c
        0x5fbff -> :sswitch_b
        0x80000 -> :sswitch_a
        0xc1000 -> :sswitch_9
        0xc3878 -> :sswitch_8
        0xc5384 -> :sswitch_7
        0xcd387 -> :sswitch_6
        0xcfbff -> :sswitch_5
        0xd1000 -> :sswitch_4
        0xd5384 -> :sswitch_3
        0xd9003 -> :sswitch_2
        0xdd387 -> :sswitch_1
        0xdfbff -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist getRafFromNetworkType(I)I
    .locals 2
    .param p0, "type"    # I

    .line 93
    const v0, 0x41000

    const v1, 0xc387

    sparse-switch p0, :sswitch_data_0

    .line 173
    const/4 v0, 0x0

    return v0

    .line 171
    :sswitch_0
    const v0, 0x4b87b

    return v0

    .line 169
    :sswitch_1
    const v0, 0xa87b

    return v0

    .line 167
    :sswitch_2
    const v0, 0x804b

    return v0

    .line 165
    :sswitch_3
    return v0

    .line 163
    :sswitch_4
    const v0, 0x49003

    return v0

    .line 161
    :sswitch_5
    const v0, 0xdfbff

    return v0

    .line 159
    :sswitch_6
    const v0, 0xdd387

    return v0

    .line 157
    :sswitch_7
    const v0, 0xd5384

    return v0

    .line 155
    :sswitch_8
    const v0, 0xd9003

    return v0

    .line 153
    :sswitch_9
    const v0, 0xd1000

    return v0

    .line 151
    :sswitch_a
    const v0, 0xc5384

    return v0

    .line 149
    :sswitch_b
    const v0, 0xcfbff

    return v0

    .line 147
    :sswitch_c
    const v0, 0xcd387

    return v0

    .line 145
    :sswitch_d
    const v0, 0xc3878

    return v0

    .line 143
    :sswitch_e
    const v0, 0xc1000

    return v0

    .line 141
    :sswitch_f
    const/high16 v0, 0x80000

    return v0

    .line 139
    :sswitch_10
    const v0, 0x5fbff

    return v0

    .line 137
    :sswitch_11
    const v0, 0x1ebff

    return v0

    .line 135
    :sswitch_12
    const v0, 0x5d387

    return v0

    .line 133
    :sswitch_13
    const v0, 0x55384

    return v0

    .line 131
    :sswitch_14
    const v0, 0x1c387

    return v0

    .line 129
    :sswitch_15
    const v0, 0x59003

    return v0

    .line 127
    :sswitch_16
    const v0, 0x18003

    return v0

    .line 125
    :sswitch_17
    const v0, 0x51000

    return v0

    .line 123
    :sswitch_18
    const v0, 0x14384

    return v0

    .line 121
    :sswitch_19
    const/high16 v0, 0x10000

    return v0

    .line 113
    :sswitch_1a
    const v0, 0x45384

    return v0

    .line 111
    :sswitch_1b
    return v0

    .line 109
    :sswitch_1c
    const v0, 0x4fbff

    return v0

    .line 107
    :sswitch_1d
    const v0, 0x4d387

    return v0

    .line 105
    :sswitch_1e
    const v0, 0x43878

    return v0

    .line 119
    :sswitch_1f
    const v0, 0xebff

    return v0

    .line 117
    :sswitch_20
    const/16 v0, 0x2830

    return v0

    .line 115
    :sswitch_21
    const/16 v0, 0x48

    return v0

    .line 103
    :sswitch_22
    const/16 v0, 0x2878

    return v0

    .line 101
    :sswitch_23
    return v1

    .line 99
    :sswitch_24
    const/16 v0, 0x4384

    return v0

    .line 97
    :sswitch_25
    const v0, 0x8003

    return v0

    .line 95
    :sswitch_26
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_26
        0x1 -> :sswitch_25
        0x2 -> :sswitch_24
        0x3 -> :sswitch_23
        0x4 -> :sswitch_22
        0x5 -> :sswitch_21
        0x6 -> :sswitch_20
        0x7 -> :sswitch_1f
        0x8 -> :sswitch_1e
        0x9 -> :sswitch_1d
        0xa -> :sswitch_1c
        0xb -> :sswitch_1b
        0xc -> :sswitch_1a
        0xd -> :sswitch_19
        0xe -> :sswitch_18
        0xf -> :sswitch_17
        0x10 -> :sswitch_16
        0x11 -> :sswitch_15
        0x12 -> :sswitch_14
        0x13 -> :sswitch_13
        0x14 -> :sswitch_12
        0x15 -> :sswitch_11
        0x16 -> :sswitch_10
        0x17 -> :sswitch_f
        0x18 -> :sswitch_e
        0x19 -> :sswitch_d
        0x1a -> :sswitch_c
        0x1b -> :sswitch_b
        0x1c -> :sswitch_a
        0x1d -> :sswitch_9
        0x1e -> :sswitch_8
        0x1f -> :sswitch_7
        0x20 -> :sswitch_6
        0x21 -> :sswitch_5
        0x65 -> :sswitch_4
        0x66 -> :sswitch_3
        0x67 -> :sswitch_2
        0x68 -> :sswitch_1
        0x69 -> :sswitch_0
    .end sparse-switch
.end method
