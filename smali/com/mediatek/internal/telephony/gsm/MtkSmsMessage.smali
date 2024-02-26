.class public Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
.super Lcom/android/internal/telephony/gsm/SmsMessage;
.source "MtkSmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    }
.end annotation


# static fields
.field public static final blacklist ENCODING_7BIT_LOCKING:I = 0xc

.field public static final blacklist ENCODING_7BIT_LOCKING_SINGLE:I = 0xd

.field public static final blacklist ENCODING_7BIT_SINGLE:I = 0xb

.field private static final blacklist ENG:Z

.field static final blacklist LOG_TAG:Ljava/lang/String; = "MtkSmsMessage"

.field public static final blacklist MASK_MESSAGE_TYPE_INDICATOR:I = 0x3

.field public static final blacklist MASK_USER_DATA_HEADER_INDICATOR:I = 0x40

.field public static final blacklist MASK_VALIDITY_PERIOD_FORMAT:I = 0x18

.field public static final blacklist MASK_VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x18

.field public static final blacklist MASK_VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x8

.field public static final blacklist MASK_VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field public static final blacklist MASK_VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x10


# instance fields
.field protected blacklist absoluteValidityPeriod:I

.field protected blacklist mDestinationAddress:Ljava/lang/String;

.field private blacklist mEncodingType:I

.field protected blacklist mwiCount:I

.field protected blacklist mwiType:I

.field protected blacklist relativeValidityPeriod:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 85
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->ENG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mEncodingType:I

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mwiType:I

    .line 114
    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mwiCount:I

    return-void
.end method

.method public static blacklist calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .line 1204
    const/4 v0, 0x0

    .line 1205
    .local v0, "newMsgBody":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1206
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x111013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1207
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 1209
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1210
    move-object v0, p0

    .line 1212
    :cond_1
    invoke-static {v0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 1214
    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v3, 0x3

    const-string v4, "MtkSmsMessage"

    if-ne p2, v3, :cond_2

    .line 1215
    const-string v3, "input mode is unicode"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v2, 0x0

    .line 1218
    :cond_2
    if-nez v2, :cond_3

    .line 1219
    const-string v3, "7-bit encoding fail"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-static {v0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    return-object v3

    .line 1222
    :cond_3
    return-object v2
.end method

.method public static blacklist computeRemainUserDataLength(Z[I)I
    .locals 3
    .param p0, "inSeptets"    # Z
    .param p1, "headerElt"    # [I

    .line 1160
    const/4 v0, 0x0

    .line 1162
    .local v0, "headerBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1163
    aget v2, p1, v1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 1171
    :sswitch_0
    add-int/lit8 v0, v0, 0x3

    .line 1172
    goto :goto_1

    .line 1168
    :sswitch_1
    add-int/lit8 v0, v0, 0x3

    .line 1169
    goto :goto_1

    .line 1165
    :sswitch_2
    add-int/lit8 v0, v0, 0x5

    .line 1166
    nop

    .line 1162
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1178
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 1179
    add-int/lit8 v0, v0, 0x1

    .line 1182
    :cond_1
    rsub-int v1, v0, 0x8c

    .line 1183
    .local v1, "count":I
    if-eqz p0, :cond_2

    .line 1184
    mul-int/lit8 v2, v1, 0x8

    div-int/lit8 v1, v2, 0x7

    .line 1190
    :cond_2
    return v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x24 -> :sswitch_1
        0x25 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist createFromEfRecord(I[B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .locals 7
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .line 191
    const-string v0, "MtkSmsMessage"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    .line 193
    .local v2, "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    iput p0, v2, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mIndexOnIcc:I

    .line 198
    const/4 v3, 0x0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    .line 199
    const-string v3, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-object v1

    .line 203
    :cond_0
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x7

    iput v4, v2, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mStatusOnIcc:I

    .line 206
    array-length v4, p1

    sub-int/2addr v4, v5

    .line 210
    .local v4, "size":I
    new-array v6, v4, [B

    .line 211
    .local v6, "pdu":[B
    invoke-static {p1, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    invoke-virtual {v2, v6}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-object v2

    .line 214
    .end local v2    # "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .end local v4    # "size":I
    .end local v6    # "pdu":[B
    :catch_0
    move-exception v2

    .line 215
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    return-object v1
.end method

.method public static blacklist createFromPdu([B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .locals 4
    .param p0, "pdu"    # [B

    .line 135
    const-string v0, "MtkSmsMessage"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    .line 136
    .local v2, "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-object v2

    .line 141
    .end local v2    # "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "SMS PDU parsing failed with out of memory: "

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    return-object v1

    .line 138
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 139
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    return-object v1
.end method

.method private static blacklist encodeStringWithSpecialLang(Ljava/lang/CharSequence;ILcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)Z
    .locals 8
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "language"    # I
    .param p2, "ted"    # Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 1030
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1032
    .local v2, "septets":I
    const-string v3, " "

    const-string v4, "MtkSmsMessage"

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 1034
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1035
    const/16 v1, 0xa0

    if-le v2, v1, :cond_0

    .line 1036
    div-int/lit16 v1, v2, 0x99

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1037
    rem-int/lit16 v1, v2, 0x99

    rsub-int v1, v1, 0x99

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0

    .line 1040
    :cond_0
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1041
    rsub-int v1, v2, 0xa0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1043
    :goto_0
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1044
    iput v5, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try Default: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    return v0

    .line 1052
    :cond_1
    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1054
    const/4 v6, 0x2

    if-eq v2, v5, :cond_3

    .line 1056
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 1057
    .local v5, "headerElt":[I
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v6

    .line 1059
    .local v6, "maxLength":I
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1060
    if-le v2, v6, :cond_2

    .line 1061
    aput v1, v5, v0

    .line 1062
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v6

    .line 1064
    div-int v1, v2, v6

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1065
    rem-int v1, v2, v6

    sub-int v1, v6, v1

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1

    .line 1067
    :cond_2
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1068
    sub-int v1, v6, v2

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1070
    :goto_1
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1071
    iput-boolean v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    .line 1072
    iput p1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Try Locking Shift: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return v0

    .line 1080
    .end local v5    # "headerElt":[I
    .end local v6    # "maxLength":I
    :cond_3
    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1082
    if-eq v2, v5, :cond_5

    .line 1084
    new-array v5, v6, [I

    fill-array-data v5, :array_1

    .line 1085
    .restart local v5    # "headerElt":[I
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v6

    .line 1087
    .restart local v6    # "maxLength":I
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1088
    if-le v2, v6, :cond_4

    .line 1089
    aput v1, v5, v0

    .line 1090
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v6

    .line 1092
    div-int v1, v2, v6

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1093
    rem-int v1, v2, v6

    sub-int v1, v6, v1

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 1095
    :cond_4
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1096
    sub-int v1, v6, v2

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1098
    :goto_2
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1099
    iput-boolean v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    .line 1100
    iput p1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Try Single Shift: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    return v0

    .line 1108
    .end local v5    # "headerElt":[I
    .end local v6    # "maxLength":I
    :cond_5
    invoke-static {p0, v0, p1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1110
    if-eq v2, v5, :cond_7

    .line 1111
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    .line 1115
    .restart local v5    # "headerElt":[I
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v7

    .line 1117
    .local v7, "maxLength":I
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1118
    if-le v2, v7, :cond_6

    .line 1119
    aput v1, v5, v6

    .line 1120
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v7

    .line 1122
    div-int v1, v2, v7

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1123
    rem-int v1, v2, v7

    sub-int v1, v7, v1

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 1125
    :cond_6
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1126
    sub-int v1, v7, v2

    iput v1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1128
    :goto_3
    iput v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1129
    iput-boolean v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    .line 1130
    iput-boolean v0, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    .line 1131
    iput p1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try Locking & Single Shift: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return v0

    .line 1136
    .end local v5    # "headerElt":[I
    .end local v7    # "maxLength":I
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Use UCS2"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    return v1

    nop

    :array_0
    .array-data 4
        0x25
        0xffff
    .end array-data

    :array_1
    .array-data 4
        0x24
        0xffff
    .end array-data

    :array_2
    .array-data 4
        0x25
        0x24
        0xffff
    .end array-data
.end method

.method private static blacklist getCurrentSysLanguage()I
    .locals 3

    .line 1144
    const-string v0, "persist.sys.language"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, "language":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1146
    const-string v2, "ro.product.locale.language"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1149
    :cond_0
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1151
    const/4 v1, -0x1

    .local v1, "ret":I
    goto :goto_0

    .line 1153
    .end local v1    # "ret":I
    :cond_1
    const/4 v1, -0x1

    .line 1156
    .restart local v1    # "ret":I
    :goto_0
    return v1
.end method

.method private static blacklist getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originalAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "ret"    # Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;

    .line 970
    const-string v0, "MtkSmsMessage"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 973
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 974
    const/4 v2, 0x0

    iput-object v2, p3, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedScAddress:[B

    goto :goto_0

    .line 976
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 981
    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 985
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .line 987
    .local v2, "oaBytes":[B
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 989
    array-length v0, v2

    sub-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x2

    .line 990
    array-length v5, v2

    sub-int/2addr v5, v4

    aget-byte v5, v2, v5

    const/16 v6, 0xf0

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    sub-int/2addr v0, v4

    .line 989
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 991
    array-length v0, v2

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 994
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 997
    goto :goto_2

    .line 995
    :catch_0
    move-exception v5

    .line 996
    .local v5, "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ex:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    .end local v5    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_2
    if-eqz v2, :cond_3

    .line 1001
    array-length v5, v2

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1002
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oaBytes length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const/16 v0, 0xd0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1006
    array-length v0, v2

    sub-int/2addr v0, v4

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 1008
    :cond_3
    const-string v4, "write a empty address for deliver pdu"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1010
    const/16 v0, 0x91

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1015
    :goto_3
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1017
    return-object v1
.end method

.method public static blacklist getDeliverPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    .locals 16
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "originalAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "header"    # [B
    .param p4, "timestamp"    # J
    .param p6, "encoding"    # I
    .param p7, "language"    # I

    .line 829
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p7

    const-string v5, "Implausible EncodeException "

    const-string v6, "Implausible UnsupportedEncodingException "

    const-string v7, "MtkSmsMessage"

    const-string v0, "SmsMessage: get deliver pdu"

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    if-eqz v2, :cond_d

    if-nez v1, :cond_0

    move-object/from16 v13, p0

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 835
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;-><init>()V

    move-object v9, v0

    .line 837
    .local v9, "ret":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SmsMessage: UDHI = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_1

    move v12, v10

    goto :goto_0

    :cond_1
    move v12, v11

    :goto_0
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    if-eqz v3, :cond_2

    const/16 v0, 0x40

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    or-int/2addr v0, v11

    int-to-byte v12, v0

    .line 840
    .local v12, "mtiByte":B
    move-object/from16 v13, p0

    invoke-static {v13, v1, v12, v9}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v14

    .line 844
    .local v14, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p6, :cond_3

    .line 846
    const/4 v0, 0x1

    move v15, v0

    .end local p6    # "encoding":I
    .local v0, "encoding":I
    goto :goto_2

    .line 844
    .end local v0    # "encoding":I
    .restart local p6    # "encoding":I
    :cond_3
    move/from16 v15, p6

    .line 849
    .end local p6    # "encoding":I
    .local v15, "encoding":I
    :goto_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get SubmitPdu with Lang "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    if-ne v15, v10, :cond_4

    .line 852
    invoke-static {v2, v3, v11, v11}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .local v0, "userData":[B
    goto :goto_4

    .line 853
    .end local v0    # "userData":[B
    :cond_4
    if-lez v4, :cond_8

    const/4 v0, 0x3

    if-eq v15, v0, :cond_8

    .line 854
    const/16 v0, 0xc

    if-ne v15, v0, :cond_5

    .line 857
    invoke-static {v2, v3, v11, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_3

    .line 859
    .end local v0    # "userData":[B
    :cond_5
    const/16 v0, 0xb

    if-ne v15, v0, :cond_6

    .line 862
    invoke-static {v2, v3, v4, v11}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_3

    .line 864
    .end local v0    # "userData":[B
    :cond_6
    const/16 v0, 0xd

    if-ne v15, v0, :cond_7

    .line 865
    invoke-static {v2, v3, v4, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_3

    .line 869
    .end local v0    # "userData":[B
    :cond_7
    invoke-static {v2, v3, v11, v11}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 871
    .restart local v0    # "userData":[B
    :goto_3
    const/4 v15, 0x1

    goto :goto_4

    .line 874
    .end local v0    # "userData":[B
    :cond_8
    :try_start_1
    invoke-static/range {p2 .. p3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 885
    .restart local v0    # "userData":[B
    nop

    .line 904
    :goto_4
    goto :goto_5

    .line 880
    .end local v0    # "userData":[B
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 881
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_2
    invoke-static {v7, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    const/4 v5, 0x0

    return-object v5

    .line 875
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 876
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v7, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 879
    const/4 v5, 0x0

    return-object v5

    .line 887
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 891
    .local v8, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static/range {p2 .. p3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 892
    .local v0, "userData":[B
    const/4 v15, 0x3

    .line 903
    nop

    .line 906
    .end local v8    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_5
    aget-byte v5, v0, v11

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xa0

    if-le v5, v6, :cond_9

    .line 907
    const-string v5, "SmsMessage: message is too long"

    invoke-static {v7, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v5, 0x0

    return-object v5

    .line 912
    :cond_9
    if-ne v15, v10, :cond_a

    .line 913
    invoke-virtual {v14, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6

    .line 915
    :cond_a
    const/16 v5, 0x8

    invoke-virtual {v14, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 922
    :goto_6
    invoke-static/range {p4 .. p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parseSCTimestamp(J)[B

    move-result-object v5

    .line 923
    .local v5, "scts":[B
    if-eqz v5, :cond_b

    .line 924
    array-length v6, v5

    invoke-virtual {v14, v5, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8

    .line 926
    :cond_b
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    const/4 v7, 0x7

    if-ge v6, v7, :cond_c

    .line 927
    invoke-virtual {v14, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 926
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 931
    .end local v6    # "i":I
    :cond_c
    :goto_8
    array-length v6, v0

    invoke-virtual {v14, v0, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 932
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v9, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedMessage:[B

    .line 934
    return-object v9

    .line 898
    .end local v0    # "userData":[B
    .end local v5    # "scts":[B
    .restart local v8    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 899
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v7, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    const/4 v5, 0x0

    return-object v5

    .line 893
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_4
    move-exception v0

    const/4 v5, 0x0

    move-object v10, v0

    move-object v0, v10

    .line 894
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v7, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    return-object v5

    .line 831
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v9    # "ret":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    .end local v12    # "mtiByte":B
    .end local v14    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "encoding":I
    .restart local p6    # "encoding":I
    :cond_d
    move-object/from16 v13, p0

    const/4 v5, 0x0

    .line 832
    :goto_9
    return-object v5
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 3
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "originalPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 531
    invoke-static {p2, p3}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeader(II)[B

    move-result-object v0

    .line 532
    .local v0, "smsHeaderData":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkSmsMessage: get submit pdu originalPort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkSmsMessage"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 534
    const/4 v1, 0x0

    return-object v1

    .line 536
    :cond_0
    if-nez p3, :cond_1

    .line 537
    invoke-static {p0, p1, p4, p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1

    .line 540
    :cond_1
    invoke-static {p0, p1, p4, v0, p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 16
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "statusReportRequested"    # Z

    .line 557
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getCurrentSysLanguage()I

    move-result v0

    .line 558
    .local v0, "language":I
    const/4 v1, -0x1

    .line 559
    .local v1, "singleId":I
    const/4 v2, -0x1

    .line 560
    .local v2, "lockingId":I
    const/4 v3, 0x0

    .line 561
    .local v3, "encoding":I
    new-instance v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v4}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 563
    .local v4, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v13, p2

    invoke-static {v13, v0, v4}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeStringWithSpecialLang(Ljava/lang/CharSequence;ILcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 564
    iget-boolean v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v5, :cond_0

    .line 565
    const/16 v3, 0xd

    .line 566
    move v2, v0

    move v1, v0

    goto :goto_0

    .line 567
    :cond_0
    iget-boolean v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v5, :cond_1

    .line 568
    const/16 v3, 0xc

    .line 569
    move v2, v0

    goto :goto_0

    .line 570
    :cond_1
    iget-boolean v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v5, :cond_2

    .line 571
    const/16 v3, 0xb

    .line 572
    move v1, v0

    goto :goto_0

    .line 574
    :cond_2
    const/4 v3, 0x1

    .line 575
    const/4 v0, -0x1

    goto :goto_0

    .line 578
    :cond_3
    const/4 v3, 0x3

    .line 581
    :goto_0
    move/from16 v14, p3

    invoke-static {v14, v1, v2}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(III)[B

    move-result-object v15

    .line 584
    .local v15, "smsHeaderData":[B
    const/4 v12, -0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object v9, v15

    move v10, v3

    move v11, v0

    invoke-static/range {v5 .. v12}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v5

    return-object v5
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 16
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I
    .param p8, "validityPeriod"    # I

    .line 1245
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p8

    if-eqz v2, :cond_10

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_9

    .line 1249
    :cond_0
    const/4 v5, 0x1

    const-string v6, "MtkSmsMessage"

    const/4 v7, 0x0

    if-nez p5, :cond_6

    .line 1251
    invoke-static {v2, v7}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    .line 1252
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v8, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1253
    .end local p5    # "encoding":I
    .local v8, "encoding":I
    iget v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 1254
    .end local p6    # "languageTable":I
    .local v9, "languageTable":I
    iget v10, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 1256
    .end local p7    # "languageShiftTable":I
    .local v10, "languageShiftTable":I
    if-ne v8, v5, :cond_5

    if-nez v9, :cond_1

    if-eqz v10, :cond_5

    .line 1257
    :cond_1
    if-eqz p4, :cond_4

    .line 1258
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    .line 1259
    .local v11, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v12, v11, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v12, v9, :cond_3

    iget v12, v11, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eq v12, v10, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v12, p4

    goto :goto_1

    .line 1261
    :cond_3
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updating language table in SMS header: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iput v9, v11, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1265
    iput v10, v11, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 1266
    invoke-static {v11}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v12

    .line 1268
    .end local v11    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local p4    # "header":[B
    .local v12, "header":[B
    :goto_1
    goto :goto_2

    .line 1269
    .end local v12    # "header":[B
    .restart local p4    # "header":[B
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->makeSmsHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    check-cast v11, Lcom/mediatek/internal/telephony/MtkSmsHeader;

    .line 1270
    .local v11, "smsHeader":Lcom/mediatek/internal/telephony/MtkSmsHeader;
    iput v9, v11, Lcom/mediatek/internal/telephony/MtkSmsHeader;->languageTable:I

    .line 1271
    iput v10, v11, Lcom/mediatek/internal/telephony/MtkSmsHeader;->languageShiftTable:I

    .line 1272
    invoke-static {v11}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v12

    .end local p4    # "header":[B
    .restart local v12    # "header":[B
    goto :goto_2

    .line 1277
    .end local v0    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v11    # "smsHeader":Lcom/mediatek/internal/telephony/MtkSmsHeader;
    .end local v12    # "header":[B
    .restart local p4    # "header":[B
    :cond_5
    move-object/from16 v12, p4

    goto :goto_2

    .line 1249
    .end local v8    # "encoding":I
    .end local v9    # "languageTable":I
    .end local v10    # "languageShiftTable":I
    .restart local p5    # "encoding":I
    .restart local p6    # "languageTable":I
    .restart local p7    # "languageShiftTable":I
    :cond_6
    move-object/from16 v12, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 1277
    .end local p4    # "header":[B
    .end local p5    # "encoding":I
    .end local p6    # "languageTable":I
    .end local p7    # "languageShiftTable":I
    .restart local v8    # "encoding":I
    .restart local v9    # "languageTable":I
    .restart local v10    # "languageShiftTable":I
    .restart local v12    # "header":[B
    :goto_2
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v11, v0

    .line 1279
    .local v11, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v0, 0x0

    .line 1280
    .local v0, "validityPeriodFormat":I
    const/4 v13, -0x1

    .line 1284
    .local v13, "relativeValidityPeriod":I
    invoke-static/range {p8 .. p8}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getRelativeValidityPeriod(I)I

    move-result v14

    move v13, v14

    if-ltz v14, :cond_7

    .line 1285
    const/4 v0, 0x2

    move v14, v0

    goto :goto_3

    .line 1284
    :cond_7
    move v14, v0

    .line 1288
    .end local v0    # "validityPeriodFormat":I
    .local v14, "validityPeriodFormat":I
    :goto_3
    shl-int/lit8 v0, v14, 0x3

    or-int/2addr v0, v5

    .line 1289
    if-eqz v12, :cond_8

    const/16 v15, 0x40

    goto :goto_4

    :cond_8
    move v15, v7

    :goto_4
    or-int/2addr v0, v15

    int-to-byte v15, v0

    .line 1291
    .local v15, "mtiByte":B
    move-object/from16 v7, p0

    move/from16 v5, p3

    invoke-static {v7, v1, v15, v5, v11}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 1294
    .local v4, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v4, :cond_9

    .line 1295
    const/4 v6, 0x0

    return-object v6

    .line 1301
    :cond_9
    const-string v1, "Implausible EncodeException "

    const-string v5, "Implausible UnsupportedEncodingException "

    const/4 v7, 0x1

    if-ne v8, v7, :cond_a

    .line 1302
    :try_start_0
    invoke-static {v2, v12, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "userData":[B
    goto :goto_5

    .line 1319
    .end local v0    # "userData":[B
    :catch_0
    move-exception v0

    goto :goto_6

    .line 1306
    :cond_a
    :try_start_1
    invoke-static {v2, v12}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1317
    .restart local v0    # "userData":[B
    nop

    .line 1336
    :goto_5
    goto :goto_7

    .line 1312
    .end local v0    # "userData":[B
    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1313
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_2
    invoke-static {v6, v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1316
    const/4 v1, 0x0

    return-object v1

    .line 1307
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1308
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v6, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1311
    const/4 v1, 0x0

    return-object v1

    .line 1319
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :goto_6
    move-object v7, v0

    .line 1323
    .local v7, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {v2, v12}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1324
    .local v0, "userData":[B
    const/4 v8, 0x3

    .line 1335
    nop

    .line 1338
    .end local v7    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_7
    const-string v1, "Message too long ("

    const/16 v5, 0xff

    const/4 v7, 0x1

    if-ne v8, v7, :cond_c

    .line 1339
    const/4 v7, 0x0

    aget-byte v2, v0, v7

    and-int/2addr v2, v5

    const/16 v5, 0xa0

    if-le v2, v5, :cond_b

    .line 1342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v0, v7

    const/16 v5, 0xff

    and-int/2addr v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " septets)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v1, 0x0

    return-object v1

    .line 1354
    :cond_b
    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_8

    .line 1356
    :cond_c
    const/4 v7, 0x0

    aget-byte v2, v0, v7

    const/16 v5, 0xff

    and-int/2addr v2, v5

    const/16 v5, 0x8c

    if-le v2, v5, :cond_d

    .line 1359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v0, v7

    const/16 v5, 0xff

    and-int/2addr v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const/4 v1, 0x0

    return-object v1

    .line 1365
    :cond_d
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1368
    :goto_8
    if-ltz v3, :cond_e

    const/16 v1, 0xff

    if-gt v3, v1, :cond_e

    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write validity period into pdu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1374
    :cond_e
    const/4 v1, 0x2

    if-ne v14, v1, :cond_f

    .line 1376
    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1379
    :cond_f
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1380
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v11, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1381
    return-object v11

    .line 1330
    .end local v0    # "userData":[B
    .restart local v7    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1331
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v6, v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1334
    const/4 v1, 0x0

    return-object v1

    .line 1325
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_4
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, v2

    .line 1326
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v6, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1329
    return-object v1

    .line 1245
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v8    # "encoding":I
    .end local v9    # "languageTable":I
    .end local v10    # "languageShiftTable":I
    .end local v11    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v12    # "header":[B
    .end local v13    # "relativeValidityPeriod":I
    .end local v14    # "validityPeriodFormat":I
    .end local v15    # "mtiByte":B
    .restart local p4    # "header":[B
    .restart local p5    # "encoding":I
    .restart local p6    # "languageTable":I
    .restart local p7    # "languageShiftTable":I
    :cond_10
    const/4 v1, 0x0

    .line 1246
    :goto_9
    return-object v1
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "statusReportRequested"    # Z

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get SubmitPdu for auto regist data.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MtkSmsMessage"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    array-length v0, p2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const/4 v4, 0x0

    const/16 v5, 0x8c

    if-le v0, v5, :cond_0

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data length is too long,SMS data.length = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-object v4

    .line 660
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 661
    .local v0, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-static {p0, p1, v3, p3, v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 664
    .local v1, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v1, :cond_1

    .line 665
    return-object v4

    .line 670
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 673
    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 676
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 678
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 679
    return-object v0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 4
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "smsHeaderData"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 604
    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8c

    if-le v0, v2, :cond_0

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS data message may only contain "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MtkSmsMessage"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-object v1

    .line 610
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 611
    .local v0, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v2, 0x41

    invoke-static {p0, p1, v2, p4, v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    .line 615
    .local v2, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v2, :cond_1

    .line 616
    return-object v1

    .line 620
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 625
    array-length v1, p2

    array-length v3, p3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 628
    array-length v1, p3

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 629
    array-length v1, p3

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 632
    array-length v1, p2

    invoke-virtual {v2, p2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 634
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 635
    return-object v0
.end method

.method public static blacklist getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 17
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "language"    # I
    .param p7, "validityPeriod"    # I

    .line 697
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    const-string v5, "Implausible EncodeException "

    const-string v6, "Implausible UnsupportedEncodingException "

    const-string v7, "MtkSmsMessage"

    const-string v0, "SmsMessage: get submit pdu with Lang"

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v8, 0x0

    if-eqz v2, :cond_e

    if-nez v1, :cond_0

    move-object/from16 v15, p0

    move/from16 v13, p3

    move-object v5, v8

    goto/16 :goto_7

    .line 703
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v9, v0

    .line 705
    .local v9, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v0, 0x0

    .line 706
    .local v0, "validityPeriodFormat":I
    const/4 v10, -0x1

    .line 710
    .local v10, "relativeValidityPeriod":I
    invoke-static/range {p7 .. p7}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getRelativeValidityPeriod(I)I

    move-result v11

    move v10, v11

    if-ltz v11, :cond_1

    .line 711
    const/4 v0, 0x2

    move v11, v0

    goto :goto_0

    .line 710
    :cond_1
    move v11, v0

    .line 714
    .end local v0    # "validityPeriodFormat":I
    .local v11, "validityPeriodFormat":I
    :goto_0
    shl-int/lit8 v0, v11, 0x3

    const/4 v12, 0x1

    or-int/2addr v0, v12

    .line 715
    if-eqz v3, :cond_2

    const/16 v14, 0x40

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    or-int/2addr v0, v14

    int-to-byte v14, v0

    .line 717
    .local v14, "mtiByte":B
    move-object/from16 v15, p0

    move/from16 v13, p3

    invoke-static {v15, v1, v14, v13, v9}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v12

    .line 720
    .local v12, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v12, :cond_3

    .line 721
    return-object v8

    .line 726
    :cond_3
    if-nez p5, :cond_4

    .line 728
    const/4 v0, 0x1

    move v8, v0

    .end local p5    # "encoding":I
    .local v0, "encoding":I
    goto :goto_2

    .line 726
    .end local v0    # "encoding":I
    .restart local p5    # "encoding":I
    :cond_4
    move/from16 v8, p5

    .line 731
    .end local p5    # "encoding":I
    .local v8, "encoding":I
    :goto_2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get SubmitPdu with Lang "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v1, 0x1

    if-ne v8, v1, :cond_5

    .line 734
    const/4 v1, 0x0

    invoke-static {v2, v3, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .local v0, "userData":[B
    goto :goto_4

    .line 735
    .end local v0    # "userData":[B
    :cond_5
    if-lez v4, :cond_9

    const/4 v0, 0x3

    if-eq v8, v0, :cond_9

    .line 736
    const/16 v0, 0xc

    if-ne v8, v0, :cond_6

    .line 739
    const/4 v1, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_3

    .line 741
    .end local v0    # "userData":[B
    :cond_6
    const/4 v1, 0x0

    const/16 v0, 0xb

    if-ne v8, v0, :cond_7

    .line 744
    invoke-static {v2, v3, v4, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_3

    .line 746
    .end local v0    # "userData":[B
    :cond_7
    const/16 v0, 0xd

    if-ne v8, v0, :cond_8

    .line 747
    invoke-static {v2, v3, v4, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    .restart local v0    # "userData":[B
    goto :goto_3

    .line 751
    .end local v0    # "userData":[B
    :cond_8
    const/4 v1, 0x0

    invoke-static {v2, v3, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 753
    .restart local v0    # "userData":[B
    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    .line 756
    .end local v0    # "userData":[B
    :cond_9
    :try_start_1
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 767
    .restart local v0    # "userData":[B
    nop

    .line 786
    :goto_4
    goto :goto_5

    .line 762
    .end local v0    # "userData":[B
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 763
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_2
    invoke-static {v7, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    const/4 v1, 0x0

    return-object v1

    .line 757
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 758
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v7, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 761
    const/4 v1, 0x0

    return-object v1

    .line 769
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 773
    .local v1, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 774
    .local v0, "userData":[B
    const/4 v8, 0x3

    .line 785
    nop

    .line 788
    .end local v1    # "ex":Lcom/android/internal/telephony/EncodeException;
    :goto_5
    const/4 v1, 0x1

    if-ne v8, v1, :cond_b

    .line 789
    const/4 v1, 0x0

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xa0

    if-le v5, v6, :cond_a

    .line 791
    const/4 v5, 0x0

    return-object v5

    .line 801
    :cond_a
    invoke-virtual {v12, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6

    .line 803
    :cond_b
    const/4 v1, 0x0

    const/4 v5, 0x0

    aget-byte v6, v0, v1

    and-int/lit16 v1, v6, 0xff

    const/16 v6, 0x8c

    if-le v1, v6, :cond_c

    .line 805
    return-object v5

    .line 812
    :cond_c
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 817
    :goto_6
    const/4 v1, 0x2

    if-ne v11, v1, :cond_d

    .line 819
    invoke-virtual {v12, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 822
    :cond_d
    array-length v1, v0

    const/4 v5, 0x0

    invoke-virtual {v12, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 823
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v9, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 824
    return-object v9

    .line 780
    .end local v0    # "userData":[B
    .restart local v1    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 781
    .local v0, "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {v7, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    const/4 v5, 0x0

    return-object v5

    .line 775
    .end local v0    # "ucs2Ex":Lcom/android/internal/telephony/EncodeException;
    :catch_4
    move-exception v0

    const/4 v5, 0x0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 776
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v7, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    return-object v5

    .line 699
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v8    # "encoding":I
    .end local v9    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v10    # "relativeValidityPeriod":I
    .end local v11    # "validityPeriodFormat":I
    .end local v12    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "mtiByte":B
    .restart local p5    # "encoding":I
    :cond_e
    move-object/from16 v15, p0

    move/from16 v13, p3

    move-object v5, v8

    .line 700
    :goto_7
    return-object v5
.end method

.method private static blacklist intToGsmBCDByte(I)B
    .locals 4
    .param p0, "value"    # I

    .line 954
    const-string v0, "MtkSmsMessage"

    if-gez p0, :cond_0

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[time invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const/4 v0, 0x0

    return v0

    .line 958
    :cond_0
    rem-int/lit8 p0, p0, 0x64

    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[time value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    div-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0xf

    rem-int/lit8 v2, p0, 0xa

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xf0

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 963
    .local v1, "b":B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[time bcd value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return v1
.end method

.method public static blacklist newFromCDS([B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .locals 3
    .param p0, "pdu"    # [B

    .line 170
    :try_start_0
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    .line 171
    .local v0, "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-object v0

    .line 173
    .end local v0    # "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MtkSmsMessage"

    const-string v2, "CDS SMS PDU parsing failed: "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist newFromCMT([Ljava/lang/String;)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    .locals 3
    .param p0, "lines"    # [Ljava/lang/String;

    .line 158
    :try_start_0
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    .line 159
    .local v0, "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return-object v0

    .line 161
    .end local v0    # "msg":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MtkSmsMessage"

    const-string v2, "SMS PDU parsing failed: "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist parseSCTimestamp(J)[B
    .locals 5
    .param p0, "millis"    # J

    .line 938
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 939
    .local v0, "t":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 941
    const/4 v1, 0x7

    new-array v1, v1, [B

    .line 942
    .local v1, "scts":[B
    iget v2, v0, Landroid/text/format/Time;->year:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 943
    iget v2, v0, Landroid/text/format/Time;->month:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    aput-byte v2, v1, v4

    .line 944
    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    .line 945
    iget v2, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    .line 946
    iget v2, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v4, 0x4

    aput-byte v2, v1, v4

    .line 947
    iget v2, v0, Landroid/text/format/Time;->second:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v4, 0x5

    aput-byte v2, v1, v4

    .line 948
    invoke-static {v3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    const/4 v3, 0x6

    aput-byte v2, v1, v3

    .line 950
    return-object v1
.end method


# virtual methods
.method public blacklist getDestinationAddress()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDestinationAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    return-object v0
.end method

.method public blacklist getEncodingType()I
    .locals 1

    .line 1393
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mEncodingType:I

    return v0
.end method

.method protected blacklist parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 1
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .line 240
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 242
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 243
    return-void
.end method

.method protected blacklist parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 1
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .line 253
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 256
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDestinationAddress:Ljava/lang/String;

    .line 259
    :cond_0
    return-void
.end method

.method protected blacklist parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 16
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "hasUserDataHeader"    # Z

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 271
    .local v3, "hasMessageClass":Z
    const/4 v4, 0x0

    .line 273
    .local v4, "userDataCompressed":Z
    const/4 v5, 0x0

    .line 276
    .local v5, "encodingType":I
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    const/16 v7, 0x80

    and-int/2addr v6, v7

    const-string v8, " Dont store = "

    const v9, 0x111013c

    const/16 v10, 0xd0

    const/16 v11, 0xe0

    const-string v12, "MtkSmsMessage"

    const/16 v13, 0xf0

    const/4 v14, 0x1

    if-nez v6, :cond_4

    .line 277
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_0

    move v6, v14

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move v4, v6

    .line 278
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_1

    move v6, v14

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    move v3, v6

    .line 280
    if-eqz v4, :cond_2

    .line 281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 284
    :cond_2
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 290
    :pswitch_0
    const/4 v5, 0x3

    .line 291
    goto :goto_2

    .line 296
    :pswitch_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 297
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 299
    const/4 v5, 0x2

    .line 300
    goto :goto_2

    .line 304
    .end local v6    # "r":Landroid/content/res/Resources;
    :cond_3
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v5, 0x2

    goto :goto_2

    .line 286
    :pswitch_3
    const/4 v5, 0x1

    .line 287
    nop

    .line 307
    :goto_2
    goto/16 :goto_9

    .line 310
    :cond_4
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v13

    if-ne v6, v13, :cond_6

    .line 311
    const/4 v3, 0x1

    .line 312
    const/4 v4, 0x0

    .line 314
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_5

    .line 316
    const/4 v5, 0x1

    goto/16 :goto_9

    .line 319
    :cond_5
    const/4 v5, 0x2

    goto/16 :goto_9

    .line 321
    :cond_6
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v13

    const/16 v15, 0xc0

    if-eq v6, v15, :cond_a

    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v13

    if-eq v6, v10, :cond_a

    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v13

    if-ne v6, v11, :cond_7

    goto :goto_3

    .line 362
    :cond_7
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v15

    if-ne v6, v7, :cond_9

    .line 365
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    const/16 v15, 0x84

    if-ne v6, v15, :cond_8

    .line 367
    const/4 v5, 0x4

    goto/16 :goto_9

    .line 369
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 373
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 330
    :cond_a
    :goto_3
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v13

    if-ne v6, v11, :cond_b

    .line 331
    const/4 v5, 0x3

    goto :goto_4

    .line 333
    :cond_b
    const/4 v5, 0x1

    .line 336
    :goto_4
    const/4 v4, 0x0

    .line 337
    iget v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    const/16 v9, 0x8

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_c

    move v6, v14

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    .line 341
    .local v6, "active":Z
    :goto_5
    iget v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_f

    .line 342
    iput-boolean v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mIsMwi:Z

    .line 343
    iput-boolean v6, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiSense:Z

    .line 344
    iget v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v9, v13

    if-ne v9, v15, :cond_d

    move v9, v14

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    :goto_6
    iput-boolean v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    .line 347
    if-ne v6, v14, :cond_e

    .line 348
    const/4 v9, -0x1

    iput v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    goto :goto_7

    .line 350
    :cond_e
    const/4 v9, 0x0

    iput v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    .line 353
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MWI in DCS for Vmail. DCS = "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " vmail count = "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 358
    :cond_f
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mIsMwi:Z

    .line 359
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MWI in DCS for fax/email/other: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v6    # "active":Z
    :goto_8
    nop

    .line 378
    :goto_9
    if-ne v5, v14, :cond_10

    move v6, v14

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v1, v2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v6

    .line 380
    .local v6, "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v9

    iput-object v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserData:[B

    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 385
    iput v5, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mEncodingType:I

    .line 396
    if-eqz v2, :cond_19

    iget-object v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_19

    .line 397
    iget-object v9, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 398
    .local v15, "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    iget v11, v15, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v11, v11, 0xff

    .line 405
    .local v11, "msgInd":I
    if-eqz v11, :cond_12

    if-ne v11, v7, :cond_11

    goto :goto_c

    .line 451
    :cond_11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0xf0

    goto :goto_10

    .line 406
    :cond_12
    :goto_c
    iput-boolean v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mIsMwi:Z

    .line 407
    if-ne v11, v7, :cond_13

    .line 409
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    const/16 v7, 0xe0

    const/16 v13, 0xf0

    goto :goto_e

    .line 410
    :cond_13
    iget-boolean v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    if-nez v10, :cond_16

    .line 418
    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    const/16 v13, 0xf0

    and-int/2addr v10, v13

    const/16 v7, 0xd0

    if-eq v10, v7, :cond_14

    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/2addr v10, v13

    const/16 v7, 0xe0

    if-ne v10, v7, :cond_15

    goto :goto_d

    :cond_14
    const/16 v7, 0xe0

    :goto_d
    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v10, v10, 0x3

    if-eqz v10, :cond_17

    .line 424
    :cond_15
    iput-boolean v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    goto :goto_e

    .line 410
    :cond_16
    const/16 v7, 0xe0

    const/16 v13, 0xf0

    .line 428
    :cond_17
    :goto_e
    iget v10, v15, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v10, v10, 0xff

    iput v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    .line 436
    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    if-lez v10, :cond_18

    .line 437
    iput-boolean v14, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiSense:Z

    const/4 v10, 0x0

    goto :goto_f

    .line 439
    :cond_18
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiSense:Z

    .line 441
    :goto_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMwiDontStore:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " Vmail count = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mVoiceMailCount:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v11    # "msgInd":I
    .end local v15    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :goto_10
    const/16 v7, 0x80

    const/16 v10, 0xd0

    const/16 v11, 0xe0

    goto/16 :goto_b

    .line 457
    :cond_19
    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_1

    goto :goto_13

    .line 485
    :pswitch_4
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_13

    .line 481
    :pswitch_5
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 482
    goto :goto_13

    .line 465
    :pswitch_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .line 466
    .local v8, "r":Landroid/content/res/Resources;
    const v9, 0x111013c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 468
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_13

    .line 470
    :cond_1a
    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 472
    goto :goto_13

    .line 475
    .end local v8    # "r":Landroid/content/res/Resources;
    :pswitch_7
    nop

    .line 476
    if-eqz v2, :cond_1b

    iget-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v9, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto :goto_11

    :cond_1b
    const/4 v9, 0x0

    .line 477
    :goto_11
    if-eqz v2, :cond_1c

    iget-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v15, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto :goto_12

    :cond_1c
    const/4 v15, 0x0

    .line 475
    :goto_12
    invoke-virtual {v1, v6, v9, v15}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 478
    goto :goto_13

    .line 459
    :pswitch_8
    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    .line 460
    nop

    .line 489
    :goto_13
    iget-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v7, :cond_1d

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->parseMessageBody()V

    .line 493
    :cond_1d
    if-nez v3, :cond_1e

    .line 494
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_14

    .line 496
    :cond_1e
    iget v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_2

    goto :goto_14

    .line 507
    :pswitch_9
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_14

    .line 504
    :pswitch_a
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 505
    goto :goto_14

    .line 501
    :pswitch_b
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 502
    goto :goto_14

    .line 498
    :pswitch_c
    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 499
    nop

    .line 511
    :goto_14
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
