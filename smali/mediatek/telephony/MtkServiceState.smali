.class public Lmediatek/telephony/MtkServiceState;
.super Landroid/telephony/ServiceState;
.source "MtkServiceState.java"


# static fields
.field static final blacklist DBG:Z = false

.field static final blacklist LOG_TAG:Ljava/lang/String; = "MTKSS"

.field public static final blacklist REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING_EMERGENCY_CALL_ENABLED:I = 0xa

.field public static final blacklist REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING_EMERGENCY_CALL_ENABLED:I = 0xc

.field public static final blacklist REGISTRATION_STATE_REGISTRATION_DENIED_EMERGENCY_CALL_ENABLED:I = 0xd

.field public static final blacklist REGISTRATION_STATE_UNKNOWN_EMERGENCY_CALL_ENABLED:I = 0xe

.field public static final blacklist RIL_RADIO_TECHNOLOGY_DC_DPA:I = 0x85

.field public static final blacklist RIL_RADIO_TECHNOLOGY_DC_HSDPAP:I = 0x87

.field public static final blacklist RIL_RADIO_TECHNOLOGY_DC_HSDPAP_DPA:I = 0x89

.field public static final blacklist RIL_RADIO_TECHNOLOGY_DC_HSDPAP_UPA:I = 0x88

.field public static final blacklist RIL_RADIO_TECHNOLOGY_DC_HSPAP:I = 0x8a

.field public static final blacklist RIL_RADIO_TECHNOLOGY_DC_UPA:I = 0x86

.field public static final blacklist RIL_RADIO_TECHNOLOGY_HSDPAP:I = 0x81

.field public static final blacklist RIL_RADIO_TECHNOLOGY_HSDPAP_UPA:I = 0x82

.field public static final blacklist RIL_RADIO_TECHNOLOGY_HSUPAP:I = 0x83

.field public static final blacklist RIL_RADIO_TECHNOLOGY_HSUPAP_DPA:I = 0x84

.field public static final blacklist RIL_RADIO_TECHNOLOGY_MTK:I = 0x80


# instance fields
.field private blacklist mCellularDataNetworkType:I

.field private blacklist mDataRejectCause:I

.field private blacklist mRilCellularDataRegState:I

.field private blacklist mRilDataRegState:I

.field private blacklist mRilVoiceRegState:I

.field private blacklist mVoiceRejectCause:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 146
    invoke-direct {p0}, Landroid/telephony/ServiceState;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 117
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 118
    const/4 v1, -0x1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 119
    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 123
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 124
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 149
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->setStateOutOfService()V

    .line 150
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 189
    invoke-direct {p0, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/os/Parcel;)V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 117
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 118
    const/4 v1, -0x1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 119
    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 123
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 124
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 198
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .line 169
    invoke-direct {p0}, Landroid/telephony/ServiceState;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 117
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 118
    const/4 v1, -0x1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 119
    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 123
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 124
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 170
    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 171
    return-void
.end method

.method public constructor blacklist <init>(Lmediatek/telephony/MtkServiceState;)V
    .locals 2
    .param p1, "s"    # Lmediatek/telephony/MtkServiceState;

    .line 157
    invoke-direct {p0}, Landroid/telephony/ServiceState;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 117
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 118
    const/4 v1, -0x1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 119
    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 123
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 124
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 158
    invoke-virtual {p0, p1}, Lmediatek/telephony/MtkServiceState;->copyFrom(Lmediatek/telephony/MtkServiceState;)V

    .line 159
    return-void
.end method

.method public static blacklist mergeMtkServiceStates(Lmediatek/telephony/MtkServiceState;Lmediatek/telephony/MtkServiceState;)Lmediatek/telephony/MtkServiceState;
    .locals 2
    .param p0, "baseSs"    # Lmediatek/telephony/MtkServiceState;
    .param p1, "voiceSs"    # Lmediatek/telephony/MtkServiceState;

    .line 373
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    if-eqz v0, :cond_0

    .line 374
    return-object p0

    .line 377
    :cond_0
    new-instance v0, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v0, p0}, Lmediatek/telephony/MtkServiceState;-><init>(Lmediatek/telephony/MtkServiceState;)V

    .line 380
    .local v0, "newSs":Lmediatek/telephony/MtkServiceState;
    iget v1, p1, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    iput v1, v0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    .line 381
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmediatek/telephony/MtkServiceState;->mIsEmergencyOnly:Z

    .line 383
    return-object v0
.end method

.method private static blacklist mtkNetworkTypeToRilRadioTechnology(I)I
    .locals 1
    .param p0, "networkType"    # I

    .line 624
    packed-switch p0, :pswitch_data_0

    .line 664
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 662
    :pswitch_1
    const/16 v0, 0x14

    return v0

    .line 660
    :pswitch_2
    const/16 v0, 0x13

    return v0

    .line 658
    :pswitch_3
    const/16 v0, 0x12

    return v0

    .line 656
    :pswitch_4
    const/16 v0, 0x11

    return v0

    .line 654
    :pswitch_5
    const/16 v0, 0x10

    return v0

    .line 652
    :pswitch_6
    const/16 v0, 0xf

    return v0

    .line 648
    :pswitch_7
    const/16 v0, 0xd

    return v0

    .line 650
    :pswitch_8
    const/16 v0, 0xe

    return v0

    .line 646
    :pswitch_9
    const/16 v0, 0xc

    return v0

    .line 636
    :pswitch_a
    const/16 v0, 0xb

    return v0

    .line 634
    :pswitch_b
    const/16 v0, 0xa

    return v0

    .line 632
    :pswitch_c
    const/16 v0, 0x9

    return v0

    .line 640
    :pswitch_d
    const/4 v0, 0x6

    return v0

    .line 644
    :pswitch_e
    const/16 v0, 0x8

    return v0

    .line 642
    :pswitch_f
    const/4 v0, 0x7

    return v0

    .line 638
    :pswitch_10
    const/4 v0, 0x4

    return v0

    .line 630
    :pswitch_11
    const/4 v0, 0x3

    return v0

    .line 628
    :pswitch_12
    const/4 v0, 0x2

    return v0

    .line 626
    :pswitch_13
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .line 138
    new-instance v0, Lmediatek/telephony/MtkServiceState;

    invoke-direct {v0}, Lmediatek/telephony/MtkServiceState;-><init>()V

    .line 139
    .local v0, "ret":Lmediatek/telephony/MtkServiceState;
    invoke-virtual {v0, p0}, Lmediatek/telephony/MtkServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 140
    return-object v0
.end method


# virtual methods
.method public blacklist compareTwoRadioTechnology(II)Z
    .locals 3
    .param p1, "nRadioTechnology1"    # I
    .param p2, "nRadioTechnology2"    # I

    .line 446
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 447
    return v0

    .line 448
    :cond_0
    const/16 v1, 0xe

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 449
    return v2

    .line 450
    :cond_1
    if-ne p2, v1, :cond_2

    .line 451
    return v0

    .line 452
    :cond_2
    const/16 v1, 0x10

    if-ne p1, v1, :cond_4

    .line 454
    if-nez p2, :cond_3

    .line 455
    return v2

    .line 458
    :cond_3
    return v0

    .line 459
    :cond_4
    if-ne p2, v1, :cond_6

    .line 461
    if-nez p1, :cond_5

    .line 462
    return v0

    .line 465
    :cond_5
    return v2

    .line 466
    :cond_6
    if-le p1, p2, :cond_7

    .line 467
    return v2

    .line 469
    :cond_7
    return v0
.end method

.method protected blacklist copyFrom(Lmediatek/telephony/MtkServiceState;)V
    .locals 1
    .param p1, "s"    # Lmediatek/telephony/MtkServiceState;

    .line 174
    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 176
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 177
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 178
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 179
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 180
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 181
    iget v0, p1, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 183
    return-void
.end method

.method public blacklist createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;
    .locals 2
    .param p1, "removeCoarseLocation"    # Z

    .line 216
    const-string v0, "ro.vendor.mtk_telephony_add_on_policy"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lmediatek/telephony/MtkServiceState;

    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {v0, v1}, Lmediatek/telephony/MtkServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 218
    .local v0, "state":Lmediatek/telephony/MtkServiceState;
    return-object v0

    .line 220
    .end local v0    # "state":Lmediatek/telephony/MtkServiceState;
    :cond_0
    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 221
    .local v0, "state":Landroid/telephony/ServiceState;
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 231
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Lmediatek/telephony/MtkServiceState;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .local v1, "s":Lmediatek/telephony/MtkServiceState;
    nop

    .line 236
    if-nez p1, :cond_0

    .line 237
    return v0

    .line 239
    :cond_0
    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v2

    .line 240
    :try_start_1
    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mDataRegState:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mDataRegState:I

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lmediatek/telephony/MtkServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v4, v1, Lmediatek/telephony/MtkServiceState;->mIsManualNetworkSelection:Z

    if-ne v3, v4, :cond_1

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mChannelNumber:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mChannelNumber:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mCellBandwidths:[I

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mCellBandwidths:[I

    .line 244
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 245
    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 246
    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mOperatorNumeric:Ljava/lang/String;

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 247
    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lmediatek/telephony/MtkServiceState;->mCssIndicator:Z

    .line 248
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v1, Lmediatek/telephony/MtkServiceState;->mCssIndicator:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mNetworkId:I

    .line 249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mSystemId:I

    .line 250
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mCdmaRoamingIndicator:I

    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 253
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 252
    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lmediatek/telephony/MtkServiceState;->mIsEmergencyOnly:Z

    iget-boolean v4, v1, Lmediatek/telephony/MtkServiceState;->mIsEmergencyOnly:Z

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    .line 255
    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    .line 256
    invoke-static {v3, v4}, Lmediatek/telephony/MtkServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 257
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    iget-object v4, v1, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    .line 258
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mNrFrequencyRange:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mNrFrequencyRange:I

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lmediatek/telephony/MtkServiceState;->mIsIwlanPreferred:Z

    iget-boolean v4, v1, Lmediatek/telephony/MtkServiceState;->mIsIwlanPreferred:Z

    if-ne v3, v4, :cond_1

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    iget v4, v1, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v2

    .line 240
    return v0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 232
    .end local v1    # "s":Lmediatek/telephony/MtkServiceState;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public blacklist fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .line 355
    invoke-super {p0, p1}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 357
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    const-string v1, "RilVoiceRegState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    const-string v1, "RilDataRegState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    const-string v1, "VoiceRejectCause"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    const-string v1, "DataRejectCause"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    const-string v1, "RilCellularDataRegState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    const-string v1, "CellularDataNetworkType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    return-void
.end method

.method public blacklist getCellularDataNetworkType()I
    .locals 1

    .line 493
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    return v0
.end method

.method public blacklist getCellularDataRegState()I
    .locals 3

    .line 543
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    return v0

    .line 544
    :cond_0
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 547
    :cond_1
    return v1

    .line 546
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCellularDataRoaming()Z
    .locals 4

    .line 479
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 481
    .local v0, "regState":Landroid/telephony/NetworkRegistrationInfo;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 484
    :cond_1
    return v2
.end method

.method public blacklist getCellularDataRoamingType()I
    .locals 4

    .line 560
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 563
    .local v0, "regPsState":Landroid/telephony/NetworkRegistrationInfo;
    iget v1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    return v2

    .line 564
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRoamingType()I

    move-result v1

    return v1

    .line 565
    :cond_1
    return v2
.end method

.method public blacklist getCellularRegState()I
    .locals 2

    .line 508
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularVoiceRegState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return v1

    .line 509
    :cond_0
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularDataRegState()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 510
    :cond_1
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularVoiceRegState()I

    move-result v0

    return v0
.end method

.method public blacklist getCellularVoiceRegState()I
    .locals 4

    .line 524
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 526
    .local v1, "regCsState":Landroid/telephony/NetworkRegistrationInfo;
    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    return v0

    .line 527
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    return v0

    .line 528
    :cond_1
    return v0
.end method

.method public blacklist getDataRejectCause()I
    .locals 1

    .line 405
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    return v0
.end method

.method public blacklist getIwlanRegState()I
    .locals 2

    .line 585
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 587
    .local v0, "regIwlanState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 588
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;
    .locals 6
    .param p1, "domain"    # I
    .param p2, "transportType"    # I

    .line 671
    iget-object v0, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 672
    :try_start_0
    iget-object v1, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 674
    .local v2, "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-nez v2, :cond_0

    .line 676
    const-string v3, "MTKSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkRegistrationInfo find null nris="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 678
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v3

    if-ne v3, p2, :cond_1

    .line 679
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getDomain()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 680
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v1, v2}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/telephony/NetworkRegistrationInfo;)V

    monitor-exit v0

    return-object v1

    .line 682
    .end local v2    # "networkRegistrationInfo":Landroid/telephony/NetworkRegistrationInfo;
    :cond_1
    :goto_1
    goto :goto_0

    .line 683
    :cond_2
    monitor-exit v0

    .line 685
    const/4 v0, 0x0

    return-object v0

    .line 683
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getRilCellularDataRegState()I
    .locals 1

    .line 551
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    return v0
.end method

.method public blacklist getRilDataRadioTechnology()I
    .locals 1

    .line 609
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getDataNetworkType()I

    move-result v0

    invoke-static {v0}, Lmediatek/telephony/MtkServiceState;->mtkNetworkTypeToRilRadioTechnology(I)I

    move-result v0

    return v0
.end method

.method public blacklist getRilDataRegState()I
    .locals 1

    .line 425
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    return v0
.end method

.method public blacklist getRilVoiceRadioTechnology()I
    .locals 2

    .line 614
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 616
    .local v0, "wwanRegInfo":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    invoke-static {v1}, Lmediatek/telephony/MtkServiceState;->mtkNetworkTypeToRilRadioTechnology(I)I

    move-result v1

    return v1

    .line 620
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getRilVoiceRegState()I
    .locals 1

    .line 420
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    return v0
.end method

.method public blacklist getVoiceRejectCause()I
    .locals 1

    .line 395
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    return v0
.end method

.method protected blacklist init()V
    .locals 2

    .line 322
    invoke-super {p0}, Landroid/telephony/ServiceState;->init()V

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 325
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 326
    const/4 v1, -0x1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 327
    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 328
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 329
    iput v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 331
    return-void
.end method

.method public blacklist isUsingCellularCarrierAggregation()Z
    .locals 1

    .line 573
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    return v0
.end method

.method public blacklist keepCellularDataServiceState()V
    .locals 2

    .line 598
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmediatek/telephony/MtkServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 600
    .local v0, "regPsState":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    .line 602
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    iput v1, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    .line 604
    :cond_0
    return-void
.end method

.method public blacklist setDataRejectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .line 415
    iput p1, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    .line 416
    return-void
.end method

.method protected blacklist setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .line 341
    const-string v0, "android.intent.extra.SERVICE_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmediatek/telephony/MtkServiceState;

    .line 342
    .local v0, "ssFromBundle":Lmediatek/telephony/MtkServiceState;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0, v0}, Lmediatek/telephony/MtkServiceState;->copyFrom(Lmediatek/telephony/MtkServiceState;)V

    .line 345
    :cond_0
    return-void
.end method

.method public blacklist setRilDataRegState(I)V
    .locals 0
    .param p1, "nDataRegState"    # I

    .line 439
    iput p1, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    .line 440
    return-void
.end method

.method public blacklist setRilVoiceRegState(I)V
    .locals 0
    .param p1, "nRegState"    # I

    .line 432
    iput p1, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    .line 433
    return-void
.end method

.method public blacklist setVoiceRejectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .line 410
    iput p1, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    .line 411
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 274
    iget-object v0, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    monitor-enter v0

    .line 275
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{mVoiceRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRegState:I

    .line 276
    invoke-static {v3}, Lmediatek/telephony/MtkServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDataRegState="

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mDataRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmediatek/telephony/MtkServiceState;->mDataRegState:I

    .line 278
    invoke-static {v3}, Lmediatek/telephony/MtkServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mChannelNumber="

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mChannelNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", duplexMode()="

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getDuplexMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCellBandwidths="

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mCellBandwidths:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mOperatorAlphaLong="

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mOperatorAlphaShort="

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isManualNetworkSelection="

    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmediatek/telephony/MtkServiceState;->mIsManualNetworkSelection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 285
    iget-boolean v2, p0, Lmediatek/telephony/MtkServiceState;->mIsManualNetworkSelection:Z

    if-eqz v2, :cond_0

    const-string v2, "(manual)"

    goto :goto_0

    :cond_0
    const-string v2, "(automatic)"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", getRilVoiceRadioTechnology="

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-static {v3}, Lmediatek/telephony/MtkServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", getRilDataRadioTechnology="

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getRilDataRadioTechnology()I

    move-result v3

    invoke-static {v3}, Lmediatek/telephony/MtkServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCssIndicator="

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmediatek/telephony/MtkServiceState;->mCssIndicator:Z

    if-eqz v2, :cond_1

    const-string v2, "supported"

    goto :goto_1

    :cond_1
    const-string v2, "unsupported"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mNetworkId="

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSystemId="

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mSystemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCdmaRoamingIndicator="

    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCdmaDefaultRoamingIndicator="

    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsEmergencyOnly="

    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmediatek/telephony/MtkServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUsingCarrierAggregation="

    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->isUsingCarrierAggregation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mNetworkRegistrationInfos="

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mNetworkRegistrationInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mNrFrequencyRange="

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_2

    .line 299
    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mNrFrequencyRange:I

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 298
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOperatorAlphaLongRaw="

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaLongRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mOperatorAlphaShortRaw="

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmediatek/telephony/MtkServiceState;->mOperatorAlphaShortRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsIwlanPreferred="

    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmediatek/telephony/MtkServiceState;->mIsIwlanPreferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Ril Voice Regist state="

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Ril Data Regist state="

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", VoiceRejectCause="

    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", DataRejectCause="

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", IwlanRegState="

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getIwlanRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CellularVoiceRegState="

    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularVoiceRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CellularDataRegState="

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", RilCellularDataRegState="

    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getRilCellularDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CellularDataRoamingType="

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularDataRoamingType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CellularDataNetworkType="

    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediatek/telephony/MtkServiceState;->getCellularDataNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}"

    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 275
    return-object v1

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 202
    invoke-super {p0, p1, p2}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 204
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mVoiceRejectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mDataRejectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mRilCellularDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Lmediatek/telephony/MtkServiceState;->mCellularDataNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    return-void
.end method
